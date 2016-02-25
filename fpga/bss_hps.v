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

  // Arduino
  inout [15:0] ARDUINO_IO,
  inout        ARDUINO_RESET_N,

  // GPIO
  inout [35:0] GPIO_0,
  inout [35:0] GPIO_1,

  // I2C
  output CLK_I2C_SCL,
  inout  CLK_I2C_SDA,

  // Key
  input [1:0] KEY,

  // LED
  output [7:0] LED,

  // Switches
  input [3:0] SW
);

wire        hps_fpga_reset_n;
wire  [1:0] fpga_debounced_buttons;
wire  [6:0] fpga_led_internal;
wire  [2:0] hps_reset_req;
wire        hps_cold_reset;
wire        hps_warm_reset;
wire        hps_debug_reset;
wire [27:0] stm_hw_events;
wire        fpga_clk_50;

assign LED[7:1] = fpga_led_internal;
assign fpga_clk_50 = FPGA_CLK1_50;
assign stm_hw_events = {{15{1'b0}}, SW, fpga_led_internal, fpga_debounced_buttons};

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
  // Clock And Reset
  .clk_clk                               (FPGA_CLK1_50),
  .reset_reset_n                         (hps_fpga_reset_n),

  // HPS DDR3
  .memory_mem_a                          (HPS_DDR3_ADDR),
  .memory_mem_ba                         (HPS_DDR3_BA),
  .memory_mem_ck                         (HPS_DDR3_CK_P),
  .memory_mem_ck_n                       (HPS_DDR3_CK_N),
  .memory_mem_cke                        (HPS_DDR3_CKE),
  .memory_mem_cs_n                       (HPS_DDR3_CS_N),
  .memory_mem_ras_n                      (HPS_DDR3_RAS_N),
  .memory_mem_cas_n                      (HPS_DDR3_CAS_N),
  .memory_mem_we_n                       (HPS_DDR3_WE_N),
  .memory_mem_reset_n                    (HPS_DDR3_RESET_N),
  .memory_mem_dq                         (HPS_DDR3_DQ),
  .memory_mem_dqs                        (HPS_DDR3_DQS_P),
  .memory_mem_dqs_n                      (HPS_DDR3_DQS_N),
  .memory_mem_odt                        (HPS_DDR3_ODT),
  .memory_mem_dm                         (HPS_DDR3_DM),
  .memory_oct_rzqin                      (HPS_DDR3_RZQ),

  // HPS Ethernet
  .hps_0_hps_io_hps_io_emac1_inst_TX_CLK (HPS_ENET_GTX_CLK),
  .hps_0_hps_io_hps_io_emac1_inst_TXD0   (HPS_ENET_TX_DATA[0]),
  .hps_0_hps_io_hps_io_emac1_inst_TXD1   (HPS_ENET_TX_DATA[1]),
  .hps_0_hps_io_hps_io_emac1_inst_TXD2   (HPS_ENET_TX_DATA[2]),
  .hps_0_hps_io_hps_io_emac1_inst_TXD3   (HPS_ENET_TX_DATA[3]),
  .hps_0_hps_io_hps_io_emac1_inst_RXD0   (HPS_ENET_RX_DATA[0]),
  .hps_0_hps_io_hps_io_emac1_inst_MDIO   (HPS_ENET_MDIO),
  .hps_0_hps_io_hps_io_emac1_inst_MDC    (HPS_ENET_MDC),
  .hps_0_hps_io_hps_io_emac1_inst_RX_CTL (HPS_ENET_RX_DV),
  .hps_0_hps_io_hps_io_emac1_inst_TX_CTL (HPS_ENET_TX_EN),
  .hps_0_hps_io_hps_io_emac1_inst_RX_CLK (HPS_ENET_RX_CLK),
  .hps_0_hps_io_hps_io_emac1_inst_RXD1   (HPS_ENET_RX_DATA[1]),
  .hps_0_hps_io_hps_io_emac1_inst_RXD2   (HPS_ENET_RX_DATA[2]),
  .hps_0_hps_io_hps_io_emac1_inst_RXD3   (HPS_ENET_RX_DATA[3]),

  // HPS SD Card
  .hps_0_hps_io_hps_io_sdio_inst_CMD     (HPS_SD_CMD),
  .hps_0_hps_io_hps_io_sdio_inst_D0      (HPS_SD_DATA[0]),
  .hps_0_hps_io_hps_io_sdio_inst_D1      (HPS_SD_DATA[1]),
  .hps_0_hps_io_hps_io_sdio_inst_CLK     (HPS_SD_CLK),
  .hps_0_hps_io_hps_io_sdio_inst_D2      (HPS_SD_DATA[2]),
  .hps_0_hps_io_hps_io_sdio_inst_D3      (HPS_SD_DATA[3]),

  // HPS USB
  .hps_0_hps_io_hps_io_usb1_inst_D0      (HPS_USB_DATA[0]),
  .hps_0_hps_io_hps_io_usb1_inst_D1      (HPS_USB_DATA[1]),
  .hps_0_hps_io_hps_io_usb1_inst_D2      (HPS_USB_DATA[2]),
  .hps_0_hps_io_hps_io_usb1_inst_D3      (HPS_USB_DATA[3]),
  .hps_0_hps_io_hps_io_usb1_inst_D4      (HPS_USB_DATA[4]),
  .hps_0_hps_io_hps_io_usb1_inst_D5      (HPS_USB_DATA[5]),
  .hps_0_hps_io_hps_io_usb1_inst_D6      (HPS_USB_DATA[6]),
  .hps_0_hps_io_hps_io_usb1_inst_D7      (HPS_USB_DATA[7]),
  .hps_0_hps_io_hps_io_usb1_inst_CLK     (HPS_USB_CLKOUT),
  .hps_0_hps_io_hps_io_usb1_inst_STP     (HPS_USB_STP),
  .hps_0_hps_io_hps_io_usb1_inst_DIR     (HPS_USB_DIR),
  .hps_0_hps_io_hps_io_usb1_inst_NXT     (HPS_USB_NXT),

  // HPS SPI
  .hps_0_hps_io_hps_io_spim1_inst_CLK    (HPS_SPIM_CLK),
  .hps_0_hps_io_hps_io_spim1_inst_MOSI   (HPS_SPIM_MOSI),
  .hps_0_hps_io_hps_io_spim1_inst_MISO   (HPS_SPIM_MISO),
  .hps_0_hps_io_hps_io_spim1_inst_SS0    (HPS_SPIM_SS),

  // HPS UART
  .hps_0_hps_io_hps_io_uart0_inst_RX     (HPS_UART_RX),
  .hps_0_hps_io_hps_io_uart0_inst_TX     (HPS_UART_TX),

  // HPS I2C1
  .hps_0_hps_io_hps_io_i2c0_inst_SDA     (HPS_I2C0_SDAT),
  .hps_0_hps_io_hps_io_i2c0_inst_SCL     (HPS_I2C0_SCLK),

  // HPS I2C2
  .hps_0_hps_io_hps_io_i2c1_inst_SDA     (HPS_I2C1_SDAT),
  .hps_0_hps_io_hps_io_i2c1_inst_SCL     (HPS_I2C1_SCLK),

  // GPIO
  .hps_0_hps_io_hps_io_gpio_inst_GPIO09  (HPS_CONV_USB_N),
  .hps_0_hps_io_hps_io_gpio_inst_GPIO35  (HPS_ENET_INT_N),
  .hps_0_hps_io_hps_io_gpio_inst_GPIO40  (HPS_LTC_GPIO),
  .hps_0_hps_io_hps_io_gpio_inst_GPIO53  (HPS_LED),
  .hps_0_hps_io_hps_io_gpio_inst_GPIO54  (HPS_KEY),
  .hps_0_hps_io_hps_io_gpio_inst_GPIO61  (HPS_GSENSOR_INT),

  // FPGA Partition
  .led_pio_external_connection_export    (fpga_led_internal),
  .dipsw_pio_external_connection_export  (SW),
  .button_pio_external_connection_export (fpga_debounced_buttons),
  .hps_0_h2f_reset_reset_n               (hps_fpga_reset_n),
  .hps_0_f2h_cold_reset_req_reset_n      (~hps_cold_reset),
  .hps_0_f2h_debug_reset_req_reset_n     (~hps_debug_reset),
  .hps_0_f2h_stm_hw_events_stm_hwevents  (stm_hw_events),
  .hps_0_f2h_warm_reset_req_reset_n      (~hps_warm_reset),

  // Soundweb I/O
  .bss_data_in_0_external_connection_export  (bss_data_in_0),
  .bss_data_in_1_external_connection_export  (bss_data_in_1),
  .bss_data_in_2_external_connection_export  (bss_data_in_2),
  .bss_data_in_3_external_connection_export  (bss_data_in_3),
  .bss_data_out_0_external_connection_export (bss_data_out_0),
  .bss_data_out_1_external_connection_export (bss_data_out_1),
  .bss_data_out_2_external_connection_export (bss_data_out_2),
  .bss_data_out_3_external_connection_export (bss_data_out_3),
  .bss_data_out_4_external_connection_export (bss_data_out_4),
  .bss_data_out_5_external_connection_export (bss_data_out_5),
  .bss_data_out_6_external_connection_export (bss_data_out_6),
  .bss_data_out_7_external_connection_export (bss_data_out_7)
);

soundweb_encoder u1 (
  .command   (bss_data_in_0[7:0]),
  .address_0 (bss_data_in_1[31:24]),
  .address_1 (bss_data_in_1[23:16]),
  .address_2 (bss_data_in_1[15:8]),
  .address_3 (bss_data_in_1[7:0]),
  .address_4 (bss_data_in_2[31:24]),
  .address_5 (bss_data_in_2[23:16]),
  .sv_0      (bss_data_in_2[15:8]),
  .sv_1      (bss_data_in_2[7:0]),
  .data_0    (bss_data_in_3[31:24]),
  .data_1    (bss_data_in_3[23:16]),
  .data_2    (bss_data_in_3[15:8]),
  .data_3    (bss_data_in_3[7:0]),

  .packet_0  (bss_data_out_0[31:24]),
  .packet_1  (bss_data_out_0[23:16]),
  .packet_2  (bss_data_out_0[15:8]),
  .packet_3  (bss_data_out_0[7:0]),
  .packet_4  (bss_data_out_1[31:24]),
  .packet_5  (bss_data_out_1[23:16]),
  .packet_6  (bss_data_out_1[15:8]),
  .packet_7  (bss_data_out_1[7:0]),
  .packet_8  (bss_data_out_2[31:24]),
  .packet_9  (bss_data_out_2[23:16]),
  .packet_10 (bss_data_out_2[15:8]),
  .packet_11 (bss_data_out_2[7:0]),
  .packet_12 (bss_data_out_3[31:24]),
  .packet_13 (bss_data_out_3[23:16]),
  .packet_14 (bss_data_out_3[15:8]),
  .packet_15 (bss_data_out_3[7:0]),
  .packet_16 (bss_data_out_4[31:24]),
  .packet_17 (bss_data_out_4[23:16]),
  .packet_18 (bss_data_out_4[15:8]),
  .packet_19 (bss_data_out_4[7:0]),
  .packet_20 (bss_data_out_5[31:24]),
  .packet_21 (bss_data_out_5[23:16]),
  .packet_22 (bss_data_out_5[15:8]),
  .packet_23 (bss_data_out_5[7:0]),
  .packet_24 (bss_data_out_6[31:24]),
  .packet_25 (bss_data_out_6[23:16]),
  .packet_26 (bss_data_out_6[15:8]),
  .packet_27 (bss_data_out_6[7:0]),
  .packet_28 (bss_data_out_7[7:0])
);

// Debounce logic to clean out glitches within 1ms
debounce debounce_inst (
  .clk                                  (fpga_clk_50),
  .reset_n                              (hps_fpga_reset_n),  
  .data_in                              (KEY),
  .data_out                             (fpga_debounced_buttons)
);
  defparam debounce_inst.WIDTH = 2;
  defparam debounce_inst.POLARITY = "LOW";
  defparam debounce_inst.TIMEOUT = 50000;               // at 50Mhz this is a debounce time of 1ms
  defparam debounce_inst.TIMEOUT_WIDTH = 16;            // ceil(log2(TIMEOUT))
  
// Source/Probe megawizard instance
hps_reset hps_reset_inst (
  .source_clk (fpga_clk_50),
  .source     (hps_reset_req)
);

altera_edge_detector pulse_cold_reset (
  .clk       (fpga_clk_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[0]),
  .pulse_out (hps_cold_reset)
);
  defparam pulse_cold_reset.PULSE_EXT = 6;
  defparam pulse_cold_reset.EDGE_TYPE = 1;
  defparam pulse_cold_reset.IGNORE_RST_WHILE_BUSY = 1;

altera_edge_detector pulse_warm_reset (
  .clk       (fpga_clk_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[1]),
  .pulse_out (hps_warm_reset)
);
  defparam pulse_warm_reset.PULSE_EXT = 2;
  defparam pulse_warm_reset.EDGE_TYPE = 1;
  defparam pulse_warm_reset.IGNORE_RST_WHILE_BUSY = 1;
  
altera_edge_detector pulse_debug_reset (
  .clk       (fpga_clk_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[2]),
  .pulse_out (hps_debug_reset)
);
  defparam pulse_debug_reset.PULSE_EXT = 32;
  defparam pulse_debug_reset.EDGE_TYPE = 1;
  defparam pulse_debug_reset.IGNORE_RST_WHILE_BUSY = 1;

reg [25:0] counter; 
reg        led_level;
always @ (posedge fpga_clk_50 or negedge hps_fpga_reset_n)
begin
if(~hps_fpga_reset_n)
begin
    counter <= 0;
    led_level <= 0;
end

else if(counter == 24999999)
  begin
    counter <= 0;
    led_level <= ~led_level;
  end
else
    counter <= counter + 1'b1;
end

assign LED[0] = led_level;
endmodule
