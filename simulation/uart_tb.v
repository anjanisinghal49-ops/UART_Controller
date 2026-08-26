`timescale 1ns / 1ps

module uart_tb;

    //------------------------------------------------
    // Parameters
    //------------------------------------------------
    parameter CLK_FREQ  = 50000000;
    parameter BAUD_RATE = 115200;

    //------------------------------------------------
    // Signals
    //------------------------------------------------
    reg clk;
    reg rst;

    reg tx_start;
    reg [7:0] tx_data;

    wire tx;
    wire tx_busy;

    wire [7:0] rx_data;
    wire rx_valid;

    //------------------------------------------------
    // Loopback
    //------------------------------------------------
    wire rx;

    assign rx = tx;

    //------------------------------------------------
    // DUT
    //------------------------------------------------
    uart #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) dut (
        .clk(clk),
        .rst(rst),

        .tx_start(tx_start),
        .tx_data(tx_data),

        .tx(tx),
        .tx_busy(tx_busy),

        .rx(rx),

        .rx_data(rx_data),
        .rx_valid(rx_valid)
    );

    //------------------------------------------------
    // Clock Generation
    //------------------------------------------------
    initial begin
    	$dumpfile("dump.vcd");
	$dumpvars(0, uart_tb);
        clk = 0;
        forever #10 clk = ~clk;      // 50 MHz
        
    end

    //------------------------------------------------
    // Test Sequence
    //------------------------------------------------
    initial begin

        rst = 1;
        tx_start = 0;
        tx_data = 8'h00;

        #100;

        rst = 0;

        #100;

        //------------------------------------------------
        // Send First Byte
        //------------------------------------------------
        tx_data = 8'h55;
        tx_start = 1;

        #20;

        tx_start = 0;

        wait(tx_busy == 0);

        #100000;

        //------------------------------------------------
        // Send Second Byte
        //------------------------------------------------
        tx_data = 8'hA3;
        tx_start = 1;

        #20;

        tx_start = 0;

        wait(tx_busy == 0);

        #100000;

        //------------------------------------------------
        // Send Third Byte
        //------------------------------------------------
        tx_data = 8'hF0;
        tx_start = 1;

        #20;

        tx_start = 0;

        wait(tx_busy == 0);

        #100000;

        $finish;

    end

    //------------------------------------------------
    // Monitor
    //------------------------------------------------
    initial begin

        $display("--------------------------------------------");
        $display(" UART Loopback Simulation Started");
        $display("--------------------------------------------");

        $monitor(
            "Time=%0t | TX=%b | Busy=%b | RX_Valid=%b | RX_Data=%h",
            $time,
            tx,
            tx_busy,
            rx_valid,
            rx_data
        );

    end

endmodule
