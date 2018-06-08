// soc_system_trace_system_0_tracesys_mm_interconnect_2.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 15.1 185

`timescale 1 ps / 1 ps
module soc_system_trace_system_0_tracesys_mm_interconnect_2 (
		input  wire        clock0_out_clk_clk,                         //                       clock0_out_clk.clk
		input  wire        bridge_0_reset_reset_bridge_in_reset_reset, // bridge_0_reset_reset_bridge_in_reset.reset
		input  wire [7:0]  bridge_0_m0_address,                        //                          bridge_0_m0.address
		output wire        bridge_0_m0_waitrequest,                    //                                     .waitrequest
		input  wire [0:0]  bridge_0_m0_burstcount,                     //                                     .burstcount
		input  wire [3:0]  bridge_0_m0_byteenable,                     //                                     .byteenable
		input  wire        bridge_0_m0_read,                           //                                     .read
		output wire [31:0] bridge_0_m0_readdata,                       //                                     .readdata
		output wire        bridge_0_m0_readdatavalid,                  //                                     .readdatavalid
		input  wire        bridge_0_m0_write,                          //                                     .write
		input  wire [31:0] bridge_0_m0_writedata,                      //                                     .writedata
		input  wire        bridge_0_m0_debugaccess,                    //                                     .debugaccess
		output wire [5:0]  tbridge_0_int_control_address,              //                tbridge_0_int_control.address
		output wire        tbridge_0_int_control_write,                //                                     .write
		output wire        tbridge_0_int_control_read,                 //                                     .read
		input  wire [31:0] tbridge_0_int_control_readdata,             //                                     .readdata
		output wire [31:0] tbridge_0_int_control_writedata,            //                                     .writedata
		input  wire        tbridge_0_int_control_waitrequest           //                                     .waitrequest
	);

	wire         bridge_0_m0_translator_avalon_universal_master_0_waitrequest;   // tbridge_0_int_control_translator:uav_waitrequest -> bridge_0_m0_translator:uav_waitrequest
	wire  [31:0] bridge_0_m0_translator_avalon_universal_master_0_readdata;      // tbridge_0_int_control_translator:uav_readdata -> bridge_0_m0_translator:uav_readdata
	wire         bridge_0_m0_translator_avalon_universal_master_0_debugaccess;   // bridge_0_m0_translator:uav_debugaccess -> tbridge_0_int_control_translator:uav_debugaccess
	wire   [7:0] bridge_0_m0_translator_avalon_universal_master_0_address;       // bridge_0_m0_translator:uav_address -> tbridge_0_int_control_translator:uav_address
	wire         bridge_0_m0_translator_avalon_universal_master_0_read;          // bridge_0_m0_translator:uav_read -> tbridge_0_int_control_translator:uav_read
	wire   [3:0] bridge_0_m0_translator_avalon_universal_master_0_byteenable;    // bridge_0_m0_translator:uav_byteenable -> tbridge_0_int_control_translator:uav_byteenable
	wire         bridge_0_m0_translator_avalon_universal_master_0_readdatavalid; // tbridge_0_int_control_translator:uav_readdatavalid -> bridge_0_m0_translator:uav_readdatavalid
	wire         bridge_0_m0_translator_avalon_universal_master_0_lock;          // bridge_0_m0_translator:uav_lock -> tbridge_0_int_control_translator:uav_lock
	wire         bridge_0_m0_translator_avalon_universal_master_0_write;         // bridge_0_m0_translator:uav_write -> tbridge_0_int_control_translator:uav_write
	wire  [31:0] bridge_0_m0_translator_avalon_universal_master_0_writedata;     // bridge_0_m0_translator:uav_writedata -> tbridge_0_int_control_translator:uav_writedata
	wire   [2:0] bridge_0_m0_translator_avalon_universal_master_0_burstcount;    // bridge_0_m0_translator:uav_burstcount -> tbridge_0_int_control_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (8),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (8),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (1),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) bridge_0_m0_translator (
		.clk                    (clock0_out_clk_clk),                                             //                       clk.clk
		.reset                  (bridge_0_reset_reset_bridge_in_reset_reset),                     //                     reset.reset
		.uav_address            (bridge_0_m0_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (bridge_0_m0_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (bridge_0_m0_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (bridge_0_m0_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (bridge_0_m0_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (bridge_0_m0_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (bridge_0_m0_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (bridge_0_m0_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (bridge_0_m0_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (bridge_0_m0_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (bridge_0_m0_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (bridge_0_m0_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (bridge_0_m0_waitrequest),                                        //                          .waitrequest
		.av_burstcount          (bridge_0_m0_burstcount),                                         //                          .burstcount
		.av_byteenable          (bridge_0_m0_byteenable),                                         //                          .byteenable
		.av_read                (bridge_0_m0_read),                                               //                          .read
		.av_readdata            (bridge_0_m0_readdata),                                           //                          .readdata
		.av_readdatavalid       (bridge_0_m0_readdatavalid),                                      //                          .readdatavalid
		.av_write               (bridge_0_m0_write),                                              //                          .write
		.av_writedata           (bridge_0_m0_writedata),                                          //                          .writedata
		.av_debugaccess         (bridge_0_m0_debugaccess),                                        //                          .debugaccess
		.av_beginbursttransfer  (1'b0),                                                           //               (terminated)
		.av_begintransfer       (1'b0),                                                           //               (terminated)
		.av_chipselect          (1'b0),                                                           //               (terminated)
		.av_lock                (1'b0),                                                           //               (terminated)
		.uav_clken              (),                                                               //               (terminated)
		.av_clken               (1'b1),                                                           //               (terminated)
		.uav_response           (2'b00),                                                          //               (terminated)
		.av_response            (),                                                               //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                           //               (terminated)
		.av_writeresponsevalid  ()                                                                //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (6),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (8),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) tbridge_0_int_control_translator (
		.clk                    (clock0_out_clk_clk),                                             //                      clk.clk
		.reset                  (bridge_0_reset_reset_bridge_in_reset_reset),                     //                    reset.reset
		.uav_address            (bridge_0_m0_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (bridge_0_m0_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (bridge_0_m0_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (bridge_0_m0_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (bridge_0_m0_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (bridge_0_m0_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (bridge_0_m0_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (bridge_0_m0_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (bridge_0_m0_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (bridge_0_m0_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (bridge_0_m0_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (tbridge_0_int_control_address),                                  //      avalon_anti_slave_0.address
		.av_write               (tbridge_0_int_control_write),                                    //                         .write
		.av_read                (tbridge_0_int_control_read),                                     //                         .read
		.av_readdata            (tbridge_0_int_control_readdata),                                 //                         .readdata
		.av_writedata           (tbridge_0_int_control_writedata),                                //                         .writedata
		.av_waitrequest         (tbridge_0_int_control_waitrequest),                              //                         .waitrequest
		.av_begintransfer       (),                                                               //              (terminated)
		.av_beginbursttransfer  (),                                                               //              (terminated)
		.av_burstcount          (),                                                               //              (terminated)
		.av_byteenable          (),                                                               //              (terminated)
		.av_readdatavalid       (1'b0),                                                           //              (terminated)
		.av_writebyteenable     (),                                                               //              (terminated)
		.av_lock                (),                                                               //              (terminated)
		.av_chipselect          (),                                                               //              (terminated)
		.av_clken               (),                                                               //              (terminated)
		.uav_clken              (1'b0),                                                           //              (terminated)
		.av_debugaccess         (),                                                               //              (terminated)
		.av_outputenable        (),                                                               //              (terminated)
		.uav_response           (),                                                               //              (terminated)
		.av_response            (2'b00),                                                          //              (terminated)
		.uav_writeresponsevalid (),                                                               //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                            //              (terminated)
	);

endmodule
