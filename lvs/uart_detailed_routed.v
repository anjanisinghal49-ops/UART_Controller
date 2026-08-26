module uart (clk,
    rst,
    rx,
    rx_valid,
    tx,
    tx_busy,
    tx_start,
    rx_data,
    tx_data);
 input clk;
 input rst;
 input rx;
 output rx_valid;
 output tx;
 output tx_busy;
 input tx_start;
 output [7:0] rx_data;
 input [7:0] tx_data;

 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire baud_tick;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire rx_busy;
 wire [15:0] _000_;
 wire [15:0] baud_cnt;
 wire [2:0] rx_bit;
 wire [7:0] rx_shift;
 wire [3:0] tx_bit;
 wire [9:0] tx_shift;

 sky130_fd_sc_hd__clkinv_1 _156_ (.A(rx_busy),
    .Y(_078_));
 sky130_fd_sc_hd__clkinv_1 _157_ (.A(baud_cnt[6]),
    .Y(_079_));
 sky130_fd_sc_hd__clkinv_1 _158_ (.A(baud_cnt[0]),
    .Y(_000_[0]));
 sky130_fd_sc_hd__clkinv_1 _159_ (.A(baud_cnt[7]),
    .Y(_080_));
 sky130_fd_sc_hd__clkinv_1 _160_ (.A(rst),
    .Y(_004_));
 sky130_fd_sc_hd__and2_0 _161_ (.A(tx_busy),
    .B(baud_tick),
    .X(_081_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _162_ (.A(tx_start),
    .SLEEP(tx_busy),
    .X(_082_));
 sky130_fd_sc_hd__nand2b_1 _163_ (.A_N(tx_busy),
    .B(tx_start),
    .Y(_083_));
 sky130_fd_sc_hd__nor2_1 _164_ (.A(_081_),
    .B(_082_),
    .Y(_084_));
 sky130_fd_sc_hd__or3_1 _165_ (.A(tx_shift[9]),
    .B(_081_),
    .C(_082_),
    .X(_077_));
 sky130_fd_sc_hd__and3_1 _166_ (.A(tx_busy),
    .B(tx_bit[0]),
    .C(baud_tick),
    .X(_085_));
 sky130_fd_sc_hd__nand3b_1 _167_ (.A_N(tx_bit[1]),
    .B(_085_),
    .C(tx_bit[3]),
    .Y(_086_));
 sky130_fd_sc_hd__mux2i_1 _168_ (.A0(tx),
    .A1(tx_shift[0]),
    .S(_081_),
    .Y(_087_));
 sky130_fd_sc_hd__o21ai_0 _169_ (.A1(tx_bit[2]),
    .A2(_086_),
    .B1(_087_),
    .Y(_076_));
 sky130_fd_sc_hd__o21ai_0 _170_ (.A1(rx_busy),
    .A2(rx),
    .B1(rx_bit[2]),
    .Y(_088_));
 sky130_fd_sc_hd__nand2_1 _171_ (.A(rx_busy),
    .B(baud_tick),
    .Y(_089_));
 sky130_fd_sc_hd__nand3b_1 _172_ (.A_N(rx_bit[2]),
    .B(rx_bit[0]),
    .C(rx_bit[1]),
    .Y(_090_));
 sky130_fd_sc_hd__o21ai_0 _173_ (.A1(_089_),
    .A2(_090_),
    .B1(_088_),
    .Y(_075_));
 sky130_fd_sc_hd__and3_1 _174_ (.A(tx_bit[1]),
    .B(tx_bit[2]),
    .C(_085_),
    .X(_091_));
 sky130_fd_sc_hd__o21ai_0 _175_ (.A1(_082_),
    .A2(_091_),
    .B1(tx_bit[3]),
    .Y(_092_));
 sky130_fd_sc_hd__o21a_1 _176_ (.A1(tx_bit[3]),
    .A2(_091_),
    .B1(_092_),
    .X(_074_));
 sky130_fd_sc_hd__o22a_1 _177_ (.A1(tx_busy),
    .A2(tx_start),
    .B1(_086_),
    .B2(tx_bit[2]),
    .X(_073_));
 sky130_fd_sc_hd__nand3_1 _178_ (.A(rx_bit[2]),
    .B(rx_bit[0]),
    .C(rx_bit[1]),
    .Y(_093_));
 sky130_fd_sc_hd__nor2_1 _179_ (.A(_089_),
    .B(_093_),
    .Y(_002_));
 sky130_fd_sc_hd__a21oi_1 _180_ (.A1(_078_),
    .A2(rx),
    .B1(_002_),
    .Y(_072_));
 sky130_fd_sc_hd__mux2_1 _181_ (.A0(rx_data[7]),
    .A1(rx_shift[7]),
    .S(_002_),
    .X(_071_));
 sky130_fd_sc_hd__mux2_1 _182_ (.A0(rx_data[0]),
    .A1(rx_shift[0]),
    .S(_002_),
    .X(_070_));
 sky130_fd_sc_hd__mux2_1 _183_ (.A0(rx_data[1]),
    .A1(rx_shift[1]),
    .S(_002_),
    .X(_069_));
 sky130_fd_sc_hd__mux2_1 _184_ (.A0(rx_data[2]),
    .A1(rx_shift[2]),
    .S(_002_),
    .X(_068_));
 sky130_fd_sc_hd__mux2_1 _185_ (.A0(rx_data[3]),
    .A1(rx_shift[3]),
    .S(_002_),
    .X(_067_));
 sky130_fd_sc_hd__mux2_1 _186_ (.A0(rx_data[4]),
    .A1(rx_shift[4]),
    .S(_002_),
    .X(_066_));
 sky130_fd_sc_hd__mux2_1 _187_ (.A0(rx_data[5]),
    .A1(rx_shift[5]),
    .S(_002_),
    .X(_065_));
 sky130_fd_sc_hd__mux2_1 _188_ (.A0(rx_data[6]),
    .A1(rx_shift[6]),
    .S(_002_),
    .X(_064_));
 sky130_fd_sc_hd__a21oi_1 _189_ (.A1(tx_bit[0]),
    .A2(_083_),
    .B1(_081_),
    .Y(_094_));
 sky130_fd_sc_hd__nor2_1 _190_ (.A(_085_),
    .B(_094_),
    .Y(_063_));
 sky130_fd_sc_hd__a21oi_1 _191_ (.A1(tx_bit[1]),
    .A2(_083_),
    .B1(_085_),
    .Y(_095_));
 sky130_fd_sc_hd__a21oi_1 _192_ (.A1(tx_bit[1]),
    .A2(_085_),
    .B1(_095_),
    .Y(_062_));
 sky130_fd_sc_hd__a22oi_1 _193_ (.A1(tx_bit[2]),
    .A2(_083_),
    .B1(_085_),
    .B2(tx_bit[1]),
    .Y(_096_));
 sky130_fd_sc_hd__nor2_1 _194_ (.A(_091_),
    .B(_096_),
    .Y(_061_));
 sky130_fd_sc_hd__nand3_1 _195_ (.A(rx_busy),
    .B(baud_tick),
    .C(_093_),
    .Y(_097_));
 sky130_fd_sc_hd__o211ai_1 _196_ (.A1(rx_busy),
    .A2(rx),
    .B1(_097_),
    .C1(rx_bit[0]),
    .Y(_098_));
 sky130_fd_sc_hd__o21ai_0 _197_ (.A1(rx_bit[0]),
    .A2(_089_),
    .B1(_098_),
    .Y(_060_));
 sky130_fd_sc_hd__o211ai_1 _198_ (.A1(rx_busy),
    .A2(rx),
    .B1(_097_),
    .C1(rx_bit[1]),
    .Y(_099_));
 sky130_fd_sc_hd__xnor2_1 _199_ (.A(rx_bit[0]),
    .B(rx_bit[1]),
    .Y(_100_));
 sky130_fd_sc_hd__o21ai_0 _200_ (.A1(_089_),
    .A2(_100_),
    .B1(_099_),
    .Y(_059_));
 sky130_fd_sc_hd__a22o_1 _201_ (.A1(tx_shift[1]),
    .A2(_081_),
    .B1(_084_),
    .B2(tx_shift[0]),
    .X(_058_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(tx_shift[1]),
    .B(_084_),
    .Y(_101_));
 sky130_fd_sc_hd__a22oi_1 _203_ (.A1(tx_shift[2]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[0]),
    .Y(_102_));
 sky130_fd_sc_hd__nand2_1 _204_ (.A(_101_),
    .B(_102_),
    .Y(_057_));
 sky130_fd_sc_hd__nand2_1 _205_ (.A(tx_shift[2]),
    .B(_084_),
    .Y(_103_));
 sky130_fd_sc_hd__a22oi_1 _206_ (.A1(tx_shift[3]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[1]),
    .Y(_104_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_103_),
    .B(_104_),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _208_ (.A(tx_shift[3]),
    .B(_084_),
    .Y(_105_));
 sky130_fd_sc_hd__a22oi_1 _209_ (.A1(tx_shift[4]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[2]),
    .Y(_106_));
 sky130_fd_sc_hd__nand2_1 _210_ (.A(_105_),
    .B(_106_),
    .Y(_055_));
 sky130_fd_sc_hd__nand2_1 _211_ (.A(tx_shift[4]),
    .B(_084_),
    .Y(_107_));
 sky130_fd_sc_hd__a22oi_1 _212_ (.A1(tx_shift[5]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[3]),
    .Y(_108_));
 sky130_fd_sc_hd__nand2_1 _213_ (.A(_107_),
    .B(_108_),
    .Y(_054_));
 sky130_fd_sc_hd__nand2_1 _214_ (.A(tx_shift[5]),
    .B(_084_),
    .Y(_109_));
 sky130_fd_sc_hd__a22oi_1 _215_ (.A1(tx_shift[6]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[4]),
    .Y(_110_));
 sky130_fd_sc_hd__nand2_1 _216_ (.A(_109_),
    .B(_110_),
    .Y(_053_));
 sky130_fd_sc_hd__nand2_1 _217_ (.A(tx_shift[6]),
    .B(_084_),
    .Y(_111_));
 sky130_fd_sc_hd__a22oi_1 _218_ (.A1(tx_shift[7]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[5]),
    .Y(_112_));
 sky130_fd_sc_hd__nand2_1 _219_ (.A(_111_),
    .B(_112_),
    .Y(_052_));
 sky130_fd_sc_hd__nand2_1 _220_ (.A(tx_shift[7]),
    .B(_084_),
    .Y(_113_));
 sky130_fd_sc_hd__a22oi_1 _221_ (.A1(tx_shift[8]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[6]),
    .Y(_114_));
 sky130_fd_sc_hd__nand2_1 _222_ (.A(_113_),
    .B(_114_),
    .Y(_051_));
 sky130_fd_sc_hd__nand2_1 _223_ (.A(tx_shift[8]),
    .B(_084_),
    .Y(_115_));
 sky130_fd_sc_hd__a22oi_1 _224_ (.A1(tx_shift[9]),
    .A2(_081_),
    .B1(_082_),
    .B2(tx_data[7]),
    .Y(_116_));
 sky130_fd_sc_hd__nand2_1 _225_ (.A(_115_),
    .B(_116_),
    .Y(_050_));
 sky130_fd_sc_hd__nand3_1 _226_ (.A(baud_cnt[1]),
    .B(baud_cnt[0]),
    .C(baud_cnt[2]),
    .Y(_117_));
 sky130_fd_sc_hd__nand4_1 _227_ (.A(baud_cnt[1]),
    .B(baud_cnt[0]),
    .C(baud_cnt[3]),
    .D(baud_cnt[2]),
    .Y(_118_));
 sky130_fd_sc_hd__nand2_1 _228_ (.A(baud_cnt[5]),
    .B(baud_cnt[4]),
    .Y(_119_));
 sky130_fd_sc_hd__nor2_1 _229_ (.A(_118_),
    .B(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__nand2_1 _230_ (.A(baud_cnt[6]),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__nor4_1 _231_ (.A(_079_),
    .B(_080_),
    .C(_118_),
    .D(_119_),
    .Y(_122_));
 sky130_fd_sc_hd__and2_0 _232_ (.A(baud_cnt[8]),
    .B(_122_),
    .X(_123_));
 sky130_fd_sc_hd__nand2_1 _233_ (.A(baud_cnt[9]),
    .B(_123_),
    .Y(_124_));
 sky130_fd_sc_hd__nand4_1 _234_ (.A(baud_cnt[9]),
    .B(baud_cnt[10]),
    .C(baud_cnt[8]),
    .D(_122_),
    .Y(_125_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _235_ (.A(baud_cnt[11]),
    .SLEEP(_125_),
    .X(_126_));
 sky130_fd_sc_hd__nand3_1 _236_ (.A(baud_cnt[12]),
    .B(baud_cnt[13]),
    .C(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__nand4_1 _237_ (.A(baud_cnt[12]),
    .B(baud_cnt[13]),
    .C(baud_cnt[14]),
    .D(_126_),
    .Y(_128_));
 sky130_fd_sc_hd__xnor2_1 _238_ (.A(baud_cnt[14]),
    .B(_127_),
    .Y(_000_[14]));
 sky130_fd_sc_hd__a21oi_1 _239_ (.A1(baud_cnt[12]),
    .A2(_126_),
    .B1(baud_cnt[13]),
    .Y(_129_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _240_ (.A(_127_),
    .SLEEP(_129_),
    .X(_000_[13]));
 sky130_fd_sc_hd__xor2_1 _241_ (.A(baud_cnt[12]),
    .B(_126_),
    .X(_000_[12]));
 sky130_fd_sc_hd__xnor2_1 _242_ (.A(baud_cnt[11]),
    .B(_125_),
    .Y(_000_[11]));
 sky130_fd_sc_hd__xnor2_1 _243_ (.A(baud_cnt[10]),
    .B(_124_),
    .Y(_000_[10]));
 sky130_fd_sc_hd__xor2_1 _244_ (.A(baud_cnt[9]),
    .B(_123_),
    .X(_000_[9]));
 sky130_fd_sc_hd__nor2_1 _245_ (.A(baud_cnt[8]),
    .B(_122_),
    .Y(_130_));
 sky130_fd_sc_hd__or4_1 _246_ (.A(baud_cnt[9]),
    .B(baud_cnt[1]),
    .C(_000_[0]),
    .D(_080_),
    .X(_131_));
 sky130_fd_sc_hd__nor4_1 _247_ (.A(baud_cnt[6]),
    .B(baud_cnt[15]),
    .C(_119_),
    .D(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__nor4_1 _248_ (.A(baud_cnt[11]),
    .B(baud_cnt[2]),
    .C(baud_cnt[13]),
    .D(baud_cnt[14]),
    .Y(_133_));
 sky130_fd_sc_hd__nor4b_1 _249_ (.A(baud_cnt[3]),
    .B(baud_cnt[10]),
    .C(baud_cnt[12]),
    .D_N(baud_cnt[8]),
    .Y(_134_));
 sky130_fd_sc_hd__and3_1 _250_ (.A(_132_),
    .B(_133_),
    .C(_134_),
    .X(_001_));
 sky130_fd_sc_hd__nor3_1 _251_ (.A(_123_),
    .B(_130_),
    .C(_001_),
    .Y(_000_[8]));
 sky130_fd_sc_hd__nand2_1 _252_ (.A(_080_),
    .B(_121_),
    .Y(_135_));
 sky130_fd_sc_hd__nor3b_1 _253_ (.A(_122_),
    .B(_001_),
    .C_N(_135_),
    .Y(_000_[7]));
 sky130_fd_sc_hd__xnor2_1 _254_ (.A(_079_),
    .B(_120_),
    .Y(_000_[6]));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _255_ (.A(baud_cnt[4]),
    .SLEEP(_118_),
    .X(_136_));
 sky130_fd_sc_hd__nor2_1 _256_ (.A(baud_cnt[5]),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__nor3_1 _257_ (.A(_120_),
    .B(_001_),
    .C(_137_),
    .Y(_000_[5]));
 sky130_fd_sc_hd__nor2b_1 _258_ (.A(baud_cnt[4]),
    .B_N(_118_),
    .Y(_138_));
 sky130_fd_sc_hd__nor3_1 _259_ (.A(_001_),
    .B(_136_),
    .C(_138_),
    .Y(_000_[4]));
 sky130_fd_sc_hd__xnor2_1 _260_ (.A(baud_cnt[3]),
    .B(_117_),
    .Y(_000_[3]));
 sky130_fd_sc_hd__a21oi_1 _261_ (.A1(baud_cnt[1]),
    .A2(baud_cnt[0]),
    .B1(baud_cnt[2]),
    .Y(_139_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _262_ (.A(_117_),
    .SLEEP(_139_),
    .X(_000_[2]));
 sky130_fd_sc_hd__xnor2_1 _263_ (.A(baud_cnt[1]),
    .B(baud_cnt[0]),
    .Y(_140_));
 sky130_fd_sc_hd__nor2_1 _264_ (.A(_001_),
    .B(_140_),
    .Y(_000_[1]));
 sky130_fd_sc_hd__nand3b_1 _265_ (.A_N(rx_bit[0]),
    .B(rx_bit[1]),
    .C(rx_bit[2]),
    .Y(_141_));
 sky130_fd_sc_hd__mux2_1 _266_ (.A0(rx),
    .A1(rx_shift[6]),
    .S(_141_),
    .X(_154_));
 sky130_fd_sc_hd__nand3b_1 _267_ (.A_N(rx_bit[1]),
    .B(rx_bit[0]),
    .C(rx_bit[2]),
    .Y(_142_));
 sky130_fd_sc_hd__mux2_1 _268_ (.A0(rx),
    .A1(rx_shift[5]),
    .S(_142_),
    .X(_153_));
 sky130_fd_sc_hd__nor2_1 _269_ (.A(rx_bit[0]),
    .B(rx_bit[1]),
    .Y(_143_));
 sky130_fd_sc_hd__nand2_1 _270_ (.A(rx_bit[2]),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__mux2_1 _271_ (.A0(rx),
    .A1(rx_shift[4]),
    .S(_144_),
    .X(_152_));
 sky130_fd_sc_hd__mux2_1 _272_ (.A0(rx),
    .A1(rx_shift[3]),
    .S(_090_),
    .X(_151_));
 sky130_fd_sc_hd__nor3b_1 _273_ (.A(rx_bit[2]),
    .B(rx_bit[0]),
    .C_N(rx_bit[1]),
    .Y(_145_));
 sky130_fd_sc_hd__mux2_1 _274_ (.A0(rx_shift[2]),
    .A1(rx),
    .S(_145_),
    .X(_150_));
 sky130_fd_sc_hd__nor3b_1 _275_ (.A(rx_bit[2]),
    .B(rx_bit[1]),
    .C_N(rx_bit[0]),
    .Y(_146_));
 sky130_fd_sc_hd__mux2_1 _276_ (.A0(rx_shift[1]),
    .A1(rx),
    .S(_146_),
    .X(_149_));
 sky130_fd_sc_hd__nor3_1 _277_ (.A(rx_bit[2]),
    .B(rx_bit[0]),
    .C(rx_bit[1]),
    .Y(_147_));
 sky130_fd_sc_hd__mux2_1 _278_ (.A0(rx_shift[0]),
    .A1(rx),
    .S(_147_),
    .X(_148_));
 sky130_fd_sc_hd__xnor2_1 _279_ (.A(baud_cnt[15]),
    .B(_128_),
    .Y(_000_[15]));
 sky130_fd_sc_hd__nor2_1 _280_ (.A(rst),
    .B(_097_),
    .Y(_003_));
 sky130_fd_sc_hd__mux2_1 _281_ (.A0(rx),
    .A1(rx_shift[7]),
    .S(_093_),
    .X(_155_));
 sky130_fd_sc_hd__clkinv_1 _282_ (.A(rst),
    .Y(_005_));
 sky130_fd_sc_hd__clkinv_1 _283_ (.A(rst),
    .Y(_006_));
 sky130_fd_sc_hd__clkinv_1 _284_ (.A(rst),
    .Y(_007_));
 sky130_fd_sc_hd__clkinv_1 _285_ (.A(rst),
    .Y(_008_));
 sky130_fd_sc_hd__clkinv_1 _286_ (.A(rst),
    .Y(_009_));
 sky130_fd_sc_hd__clkinv_1 _287_ (.A(rst),
    .Y(_010_));
 sky130_fd_sc_hd__clkinv_1 _288_ (.A(rst),
    .Y(_011_));
 sky130_fd_sc_hd__clkinv_1 _289_ (.A(rst),
    .Y(_012_));
 sky130_fd_sc_hd__clkinv_1 _290_ (.A(rst),
    .Y(_013_));
 sky130_fd_sc_hd__clkinv_1 _291_ (.A(rst),
    .Y(_014_));
 sky130_fd_sc_hd__clkinv_1 _292_ (.A(rst),
    .Y(_015_));
 sky130_fd_sc_hd__clkinv_1 _293_ (.A(rst),
    .Y(_016_));
 sky130_fd_sc_hd__clkinv_1 _294_ (.A(rst),
    .Y(_017_));
 sky130_fd_sc_hd__clkinv_1 _295_ (.A(rst),
    .Y(_018_));
 sky130_fd_sc_hd__clkinv_1 _296_ (.A(rst),
    .Y(_019_));
 sky130_fd_sc_hd__clkinv_1 _297_ (.A(rst),
    .Y(_020_));
 sky130_fd_sc_hd__clkinv_1 _298_ (.A(rst),
    .Y(_021_));
 sky130_fd_sc_hd__clkinv_1 _299_ (.A(rst),
    .Y(_022_));
 sky130_fd_sc_hd__clkinv_1 _300_ (.A(rst),
    .Y(_023_));
 sky130_fd_sc_hd__clkinv_1 _301_ (.A(rst),
    .Y(_024_));
 sky130_fd_sc_hd__clkinv_1 _302_ (.A(rst),
    .Y(_025_));
 sky130_fd_sc_hd__clkinv_1 _303_ (.A(rst),
    .Y(_026_));
 sky130_fd_sc_hd__clkinv_1 _304_ (.A(rst),
    .Y(_027_));
 sky130_fd_sc_hd__clkinv_1 _305_ (.A(rst),
    .Y(_028_));
 sky130_fd_sc_hd__clkinv_1 _306_ (.A(rst),
    .Y(_029_));
 sky130_fd_sc_hd__clkinv_1 _307_ (.A(rst),
    .Y(_030_));
 sky130_fd_sc_hd__clkinv_1 _308_ (.A(rst),
    .Y(_031_));
 sky130_fd_sc_hd__clkinv_1 _309_ (.A(rst),
    .Y(_032_));
 sky130_fd_sc_hd__clkinv_1 _310_ (.A(rst),
    .Y(_033_));
 sky130_fd_sc_hd__clkinv_1 _311_ (.A(rst),
    .Y(_034_));
 sky130_fd_sc_hd__clkinv_1 _312_ (.A(rst),
    .Y(_035_));
 sky130_fd_sc_hd__clkinv_1 _313_ (.A(rst),
    .Y(_036_));
 sky130_fd_sc_hd__clkinv_1 _314_ (.A(rst),
    .Y(_037_));
 sky130_fd_sc_hd__clkinv_1 _315_ (.A(rst),
    .Y(_038_));
 sky130_fd_sc_hd__clkinv_1 _316_ (.A(rst),
    .Y(_039_));
 sky130_fd_sc_hd__clkinv_1 _317_ (.A(rst),
    .Y(_040_));
 sky130_fd_sc_hd__clkinv_1 _318_ (.A(rst),
    .Y(_041_));
 sky130_fd_sc_hd__clkinv_1 _319_ (.A(rst),
    .Y(_042_));
 sky130_fd_sc_hd__clkinv_1 _320_ (.A(rst),
    .Y(_043_));
 sky130_fd_sc_hd__clkinv_1 _321_ (.A(rst),
    .Y(_044_));
 sky130_fd_sc_hd__clkinv_1 _322_ (.A(rst),
    .Y(_045_));
 sky130_fd_sc_hd__clkinv_1 _323_ (.A(rst),
    .Y(_046_));
 sky130_fd_sc_hd__clkinv_1 _324_ (.A(rst),
    .Y(_047_));
 sky130_fd_sc_hd__clkinv_1 _325_ (.A(rst),
    .Y(_048_));
 sky130_fd_sc_hd__clkinv_1 _326_ (.A(rst),
    .Y(_049_));
 sky130_fd_sc_hd__edfxtp_1 _327_ (.D(_148_),
    .DE(_003_),
    .Q(rx_shift[0]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _328_ (.D(_149_),
    .DE(_003_),
    .Q(rx_shift[1]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _329_ (.D(_150_),
    .DE(_003_),
    .Q(rx_shift[2]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _330_ (.D(_151_),
    .DE(_003_),
    .Q(rx_shift[3]),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _331_ (.D(_152_),
    .DE(_003_),
    .Q(rx_shift[4]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _332_ (.D(_153_),
    .DE(_003_),
    .Q(rx_shift[5]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _333_ (.D(_154_),
    .DE(_003_),
    .Q(rx_shift[6]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__edfxtp_1 _334_ (.D(_155_),
    .DE(_003_),
    .Q(rx_shift[7]),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _335_ (.D(_070_),
    .Q(rx_data[0]),
    .RESET_B(_039_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _336_ (.D(_069_),
    .Q(rx_data[1]),
    .RESET_B(_038_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _337_ (.D(_068_),
    .Q(rx_data[2]),
    .RESET_B(_037_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _338_ (.D(_067_),
    .Q(rx_data[3]),
    .RESET_B(_036_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _339_ (.D(_066_),
    .Q(rx_data[4]),
    .RESET_B(_035_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _340_ (.D(_065_),
    .Q(rx_data[5]),
    .RESET_B(_034_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _341_ (.D(_064_),
    .Q(rx_data[6]),
    .RESET_B(_033_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _342_ (.D(_071_),
    .Q(rx_data[7]),
    .RESET_B(_042_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _343_ (.D(_072_),
    .Q(rx_busy),
    .RESET_B(_044_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _344_ (.D(_073_),
    .Q(tx_busy),
    .RESET_B(_045_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _345_ (.D(_063_),
    .Q(tx_bit[0]),
    .RESET_B(_032_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _346_ (.D(_062_),
    .Q(tx_bit[1]),
    .RESET_B(_031_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _347_ (.D(_061_),
    .Q(tx_bit[2]),
    .RESET_B(_030_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _348_ (.D(_074_),
    .Q(tx_bit[3]),
    .RESET_B(_046_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _349_ (.D(_060_),
    .Q(rx_bit[0]),
    .RESET_B(_029_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _350_ (.D(_059_),
    .Q(rx_bit[1]),
    .RESET_B(_028_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _351_ (.D(_075_),
    .Q(rx_bit[2]),
    .RESET_B(_047_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _352_ (.D(_076_),
    .Q(tx),
    .SET_B(_048_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _353_ (.D(_058_),
    .Q(tx_shift[0]),
    .SET_B(_027_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _354_ (.D(_057_),
    .Q(tx_shift[1]),
    .SET_B(_026_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _355_ (.D(_056_),
    .Q(tx_shift[2]),
    .SET_B(_025_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _356_ (.D(_055_),
    .Q(tx_shift[3]),
    .SET_B(_024_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _357_ (.D(_054_),
    .Q(tx_shift[4]),
    .SET_B(_023_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _358_ (.D(_053_),
    .Q(tx_shift[5]),
    .SET_B(_022_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _359_ (.D(_052_),
    .Q(tx_shift[6]),
    .SET_B(_021_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _360_ (.D(_051_),
    .Q(tx_shift[7]),
    .SET_B(_020_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _361_ (.D(_050_),
    .Q(tx_shift[8]),
    .SET_B(_019_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 _362_ (.D(_077_),
    .Q(tx_shift[9]),
    .SET_B(_049_),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _363_ (.D(_002_),
    .Q(rx_valid),
    .RESET_B(_040_),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _364_ (.D(_000_[0]),
    .Q(baud_cnt[0]),
    .RESET_B(_018_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _365_ (.D(_000_[1]),
    .Q(baud_cnt[1]),
    .RESET_B(_017_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _366_ (.D(_000_[2]),
    .Q(baud_cnt[2]),
    .RESET_B(_016_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _367_ (.D(_000_[3]),
    .Q(baud_cnt[3]),
    .RESET_B(_015_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _368_ (.D(_000_[4]),
    .Q(baud_cnt[4]),
    .RESET_B(_014_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _369_ (.D(_000_[5]),
    .Q(baud_cnt[5]),
    .RESET_B(_013_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _370_ (.D(_000_[6]),
    .Q(baud_cnt[6]),
    .RESET_B(_012_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _371_ (.D(_000_[7]),
    .Q(baud_cnt[7]),
    .RESET_B(_011_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _372_ (.D(_000_[8]),
    .Q(baud_cnt[8]),
    .RESET_B(_010_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _373_ (.D(_000_[9]),
    .Q(baud_cnt[9]),
    .RESET_B(_009_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _374_ (.D(_000_[10]),
    .Q(baud_cnt[10]),
    .RESET_B(_008_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _375_ (.D(_000_[11]),
    .Q(baud_cnt[11]),
    .RESET_B(_007_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _376_ (.D(_000_[12]),
    .Q(baud_cnt[12]),
    .RESET_B(_006_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _377_ (.D(_000_[13]),
    .Q(baud_cnt[13]),
    .RESET_B(_005_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _378_ (.D(_000_[14]),
    .Q(baud_cnt[14]),
    .RESET_B(_004_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _379_ (.D(_000_[15]),
    .Q(baud_cnt[15]),
    .RESET_B(_041_),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 _380_ (.D(_001_),
    .Q(baud_tick),
    .RESET_B(_043_),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkinv_1 clkload0 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload1 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload2 (.A(clknet_2_3__leaf_clk));
endmodule
