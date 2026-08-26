`timescale 1ns/1ps
module uart #(
    parameter CLK_FREQ=50000000,
    parameter BAUD_RATE=115200
)(
    input wire clk,
    input wire rst,
    input wire tx_start,
    input wire [7:0] tx_data,
    output reg tx,
    output reg tx_busy,

    input wire rx,
    output reg [7:0] rx_data,
    output reg rx_valid
);

localparam integer BAUD_DIV = CLK_FREQ/BAUD_RATE;
reg [15:0] baud_cnt;
reg baud_tick;

always @(posedge clk or posedge rst) begin
  if(rst) begin baud_cnt<=0; baud_tick<=0; end
  else if(baud_cnt==BAUD_DIV[15:0]-1) begin baud_cnt<=0; baud_tick<=1; end
  else begin baud_cnt<=baud_cnt+1; baud_tick<=0; end
end

//---------------- TX ----------------
reg [9:0] tx_shift;
reg [3:0] tx_bit;

always @(posedge clk or posedge rst) begin
  if(rst) begin
    tx<=1'b1; tx_busy<=0; tx_shift<=10'h3FF; tx_bit<=0;
  end else begin
    if(!tx_busy && tx_start) begin
      tx_busy<=1;
      tx_shift<={1'b1,tx_data,1'b0}; // stop,data,start
      tx_bit<=0;
    end else if(tx_busy && baud_tick) begin
      tx<=tx_shift[0];
      tx_shift<={1'b1,tx_shift[9:1]};
      if(tx_bit==9) begin
        tx_busy<=0;
        tx<=1'b1;
      end
      tx_bit<=tx_bit+1;
    end
  end
end

//---------------- RX ----------------
reg [2:0] rx_bit;
reg [7:0] rx_shift;
reg rx_busy;

always @(posedge clk or posedge rst) begin
  if(rst) begin
    rx_busy<=0; rx_valid<=0; rx_bit<=0; rx_data<=0;
  end else begin
    rx_valid<=0;
    if(!rx_busy && !rx) begin
      rx_busy<=1;
      rx_bit<=0;
    end else if(rx_busy && baud_tick) begin
      if(rx_bit<3'd7) begin
        rx_shift[rx_bit]<=rx;
        rx_bit<=rx_bit+1'b1;
      end else begin
        rx_busy<=0;
        rx_data<=rx_shift;
        rx_valid<=1;
      end
    end
  end
end

endmodule

