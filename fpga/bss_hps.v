module bss_hps(
  // HPS
  inout         HPS_CONV_USB_N,
  output [14:0] HPS_DDR3_ADDR,
  output  [2:0] HPS_DDR3_BA,
  output        HPS_DDR3_CAS_N,
  output        HPS_DDR3_CK_N,
  output        HPS_DDR3_CK_P,
  output        HPS_DDR3_CKE,
  output        HPS_DDR3_CS_N,
  output  [3:0] HPS_DDR3_DM,
  inout  [31:0] HPS_DDR3_DQ,
  inout   [3:0] HPS_DDR3_DQS_N,
  inout   [3:0] HPS_DDR3_DQS_P,
  output        HPS_DDR3_ODT,
  output        HPS_DDR3_RAS_N,
  output        HPS_DDR3_RESET_N,
  input         HPS_DDR3_RZQ,
  output        HPS_DDR3_WE_N,
  output        HPS_ENET_GTX_CLK,
  inout         HPS_ENET_INT_N,
  output        HPS_ENET_MDC,
  inout         HPS_ENET_MDIO,
  input         HPS_ENET_RX_CLK,
  input   [3:0] HPS_ENET_RX_DATA,
  input         HPS_ENET_RX_DV,
  output  [3:0] HPS_ENET_TX_DATA,
  output        HPS_ENET_TX_EN,
  inout         HPS_GSENSOR_INT,
  inout         HPS_I2C0_SCLK,
  inout         HPS_I2C0_SDAT,
  inout         HPS_I2C1_SCLK,
  inout         HPS_I2C1_SDAT,
  inout         HPS_KEY,
  inout         HPS_LED,
  inout         HPS_LTC_GPIO,
  output        HPS_SD_CLK,
  inout         HPS_SD_CMD,
  inout   [3:0] HPS_SD_DATA,
  output        HPS_SPIM_CLK,
  input         HPS_SPIM_MISO,
  output        HPS_SPIM_MOSI,
  inout         HPS_SPIM_SS,
  input         HPS_UART_RX,
  output        HPS_UART_TX,
  input         HPS_USB_CLKOUT,
  inout   [7:0] HPS_USB_DATA,
  input         HPS_USB_DIR,
  input         HPS_USB_NXT,
  output        HPS_USB_STP,

  // Clock
  input FPGA_CLK1_50,
  input FPGA_CLK2_50,
  input FPGA_CLK3_50,

  // ADC
  output ADC_CONVST,
  output ADC_SCK,
  output ADC_SDI,
  input  ADC_SDO,

  // Switches
  input [3:0] SW,

  // Keys
  input [1:0] KEY,

  // LEDs
  output [7:0] LED
);

wire [31:0] bss_ctl_0;
reg  [31:0] bss_ctl_1;

wire [31:0] bss_data_in_0;
wire [31:0] bss_data_in_1;
wire [31:0] bss_data_in_2;
wire [31:0] bss_data_in_3;
wire [31:0] bss_data_out_0;
wire [31:0] bss_data_out_1;
wire [31:0] bss_data_out_2;
wire [31:0] bss_data_out_3;
wire [31:0] bss_data_out_4;
wire [31:0] bss_data_out_5;
wire [31:0] bss_data_out_6;
wire [31:0] bss_data_out_7;

soc_system u0 (
  .clk_clk                                   (FPGA_CLK1_50),     // clk.clk
  .reset_reset_n                             (1'b1),             // reset.reset_n
  .memory_mem_a                              (HPS_DDR3_ADDR),    // memory.mem_a
  .memory_mem_ba                             (HPS_DDR3_BA),      // .mem_ba
  .memory_mem_ck                             (HPS_DDR3_CK_P),    // .mem_ck
  .memory_mem_ck_n                           (HPS_DDR3_CK_N),    // .mem_ck_n
  .memory_mem_cke                            (HPS_DDR3_CKE),     // .mem_cke
  .memory_mem_cs_n                           (HPS_DDR3_CS_N),    // .mem_cs_n
  .memory_mem_ras_n                          (HPS_DDR3_RAS_N),   // .mem_ras_n
  .memory_mem_cas_n                          (HPS_DDR3_CAS_N),   // .mem_cas_n
  .memory_mem_we_n                           (HPS_DDR3_WE_N),    // .mem_we_n
  .memory_mem_reset_n                        (HPS_DDR3_RESET_N), // .mem_reset_n
  .memory_mem_dq                             (HPS_DDR3_DQ),      // .mem_dq
  .memory_mem_dqs                            (HPS_DDR3_DQS_P),   // .mem_dqs
  .memory_mem_dqs_n                          (HPS_DDR3_DQS_N),   // .mem_dqs_n
  .memory_mem_odt                            (HPS_DDR3_ODT),     // .mem_odt
  .memory_mem_dm                             (HPS_DDR3_DM),      // .mem_dm
  .memory_oct_rzqin                          (HPS_DDR3_RZQ),     // .oct_rzqin
  .hps_0_f2h_cold_reset_req_reset_n          (1'b0),             // hps_0_f2h_cold_reset_req.reset_n
  .hps_0_f2h_debug_reset_req_reset_n         (1'b0),             // hps_0_f2h_debug_reset_req.reset_n
  .hps_0_f2h_warm_reset_req_reset_n          (1'b0),             // hps_0_f2h_warm_reset_req.reset_n
  .hps_0_h2f_reset_reset_n                   (1'b0),             // hps_0_h2f_reset.reset_n
  .bss_ctl_0_external_connection_export      (bss_ctl_0),        // bss_ctl_0_external_connection.export
  .bss_ctl_1_external_connection_export      (bss_ctl_1),        // bss_ctl_1_external_connection.export
  .bss_data_in_0_external_connection_export  (bss_data_in_0),    // bss_data_in_0_external_connection.export
  .bss_data_in_1_external_connection_export  (bss_data_in_1),    // bss_data_in_1_external_connection.export
  .bss_data_in_2_external_connection_export  (bss_data_in_2),    // bss_data_in_2_external_connection.export
  .bss_data_in_3_external_connection_export  (bss_data_in_3),    // bss_data_in_3_external_connection.export
  .bss_data_out_0_external_connection_export (bss_data_out_0),   // bss_data_out_0_external_connection.export
  .bss_data_out_1_external_connection_export (bss_data_out_1),   // bss_data_out_1_external_connection.export
  .bss_data_out_2_external_connection_export (bss_data_out_2),   // bss_data_out_2_external_connection.export
  .bss_data_out_3_external_connection_export (bss_data_out_3),   // bss_data_out_3_external_connection.export
  .bss_data_out_4_external_connection_export (bss_data_out_4),   // bss_data_out_4_external_connection.export
  .bss_data_out_5_external_connection_export (bss_data_out_5),   // bss_data_out_5_external_connection.export
  .bss_data_out_6_external_connection_export (bss_data_out_6),   // bss_data_out_6_external_connection.export
  .bss_data_out_7_external_connection_export (bss_data_out_7),   // bss_data_out_7_external_connection.export
);

soundweb_encoder u1 (
  .command   (bss_data_in_0[7:0]),
  .address_0 (bss_data_in_1[7:0]),
  .address_1 (bss_data_in_1[15:8]),
  .address_2 (bss_data_in_1[23:16]),
  .address_3 (bss_data_in_1[31:24]),
  .address_4 (bss_data_in_2[7:0]),
  .address_5 (bss_data_in_2[15:8]),
  .sv_0      (bss_data_in_2[23:16]),
  .sv_1      (bss_data_in_2[31:24]),
  .data_0    (bss_data_in_3[7:0]),
  .data_1    (bss_data_in_3[15:8]),
  .data_2    (bss_data_in_3[23:16]),
  .data_3    (bss_data_in_3[31:24]),

  .packet_0  (bss_data_out_0[7:0]),
  .packet_1  (bss_data_out_0[15:8]),
  .packet_2  (bss_data_out_0[23:16]),
  .packet_3  (bss_data_out_0[31:24]),
  .packet_4  (bss_data_out_1[7:0]),
  .packet_5  (bss_data_out_1[15:8]),
  .packet_6  (bss_data_out_1[23:16]),
  .packet_7  (bss_data_out_1[31:24]),
  .packet_8  (bss_data_out_2[7:0]),
  .packet_9  (bss_data_out_2[15:8]),
  .packet_10 (bss_data_out_2[23:16]),
  .packet_11 (bss_data_out_2[31:24]),
  .packet_12 (bss_data_out_3[7:0]),
  .packet_13 (bss_data_out_3[15:8]),
  .packet_14 (bss_data_out_3[23:16]),
  .packet_15 (bss_data_out_3[31:24]),
  .packet_16 (bss_data_out_4[7:0]),
  .packet_17 (bss_data_out_4[15:8]),
  .packet_18 (bss_data_out_4[23:16]),
  .packet_19 (bss_data_out_4[31:24]),
  .packet_20 (bss_data_out_5[7:0]),
  .packet_21 (bss_data_out_5[15:8]),
  .packet_22 (bss_data_out_5[23:16]),
  .packet_23 (bss_data_out_5[31:24]),
  .packet_24 (bss_data_out_6[7:0]),
  .packet_25 (bss_data_out_6[15:8]),
  .packet_26 (bss_data_out_6[23:16]),
  .packet_27 (bss_data_out_6[31:24]),
  .packet_28 (bss_data_out_7[7:0])
);

endmodule
