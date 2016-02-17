#ifndef _ALTERA_HPS_H_
#define _ALTERA_HPS_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'soc_system' in
 * file '../fpga/qsys/soc_system.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0' and devices
 * connected to the following masters:
 *   h2f_axi_master
 *   h2f_lw_axi_master
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'bss_ctl_0', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_CTL_0_'.
 * The prefix is the slave descriptor.
 */
#define BSS_CTL_0_COMPONENT_TYPE altera_avalon_pio
#define BSS_CTL_0_COMPONENT_NAME bss_ctl_0
#define BSS_CTL_0_BASE 0x0
#define BSS_CTL_0_SPAN 32
#define BSS_CTL_0_END 0x1f
#define BSS_CTL_0_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_CTL_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_CTL_0_CAPTURE 0
#define BSS_CTL_0_DATA_WIDTH 32
#define BSS_CTL_0_DO_TEST_BENCH_WIRING 0
#define BSS_CTL_0_DRIVEN_SIM_VALUE 0
#define BSS_CTL_0_EDGE_TYPE NONE
#define BSS_CTL_0_FREQ 50000000
#define BSS_CTL_0_HAS_IN 0
#define BSS_CTL_0_HAS_OUT 1
#define BSS_CTL_0_HAS_TRI 0
#define BSS_CTL_0_IRQ_TYPE NONE
#define BSS_CTL_0_RESET_VALUE 0

/*
 * Macros for device 'bss_ctl_1', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_CTL_1_'.
 * The prefix is the slave descriptor.
 */
#define BSS_CTL_1_COMPONENT_TYPE altera_avalon_pio
#define BSS_CTL_1_COMPONENT_NAME bss_ctl_1
#define BSS_CTL_1_BASE 0x10
#define BSS_CTL_1_SPAN 32
#define BSS_CTL_1_END 0x2f
#define BSS_CTL_1_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_CTL_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_CTL_1_CAPTURE 0
#define BSS_CTL_1_DATA_WIDTH 32
#define BSS_CTL_1_DO_TEST_BENCH_WIRING 0
#define BSS_CTL_1_DRIVEN_SIM_VALUE 0
#define BSS_CTL_1_EDGE_TYPE NONE
#define BSS_CTL_1_FREQ 50000000
#define BSS_CTL_1_HAS_IN 1
#define BSS_CTL_1_HAS_OUT 0
#define BSS_CTL_1_HAS_TRI 0
#define BSS_CTL_1_IRQ_TYPE NONE
#define BSS_CTL_1_RESET_VALUE 0

/*
 * Macros for device 'bss_data_in_0', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_IN_0_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_IN_0_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_IN_0_COMPONENT_NAME bss_data_in_0
#define BSS_DATA_IN_0_BASE 0x20
#define BSS_DATA_IN_0_SPAN 32
#define BSS_DATA_IN_0_END 0x3f
#define BSS_DATA_IN_0_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_IN_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_IN_0_CAPTURE 0
#define BSS_DATA_IN_0_DATA_WIDTH 32
#define BSS_DATA_IN_0_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_IN_0_DRIVEN_SIM_VALUE 0
#define BSS_DATA_IN_0_EDGE_TYPE NONE
#define BSS_DATA_IN_0_FREQ 50000000
#define BSS_DATA_IN_0_HAS_IN 0
#define BSS_DATA_IN_0_HAS_OUT 1
#define BSS_DATA_IN_0_HAS_TRI 0
#define BSS_DATA_IN_0_IRQ_TYPE NONE
#define BSS_DATA_IN_0_RESET_VALUE 0

/*
 * Macros for device 'bss_data_in_1', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_IN_1_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_IN_1_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_IN_1_COMPONENT_NAME bss_data_in_1
#define BSS_DATA_IN_1_BASE 0x30
#define BSS_DATA_IN_1_SPAN 32
#define BSS_DATA_IN_1_END 0x4f
#define BSS_DATA_IN_1_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_IN_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_IN_1_CAPTURE 0
#define BSS_DATA_IN_1_DATA_WIDTH 32
#define BSS_DATA_IN_1_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_IN_1_DRIVEN_SIM_VALUE 0
#define BSS_DATA_IN_1_EDGE_TYPE NONE
#define BSS_DATA_IN_1_FREQ 50000000
#define BSS_DATA_IN_1_HAS_IN 0
#define BSS_DATA_IN_1_HAS_OUT 1
#define BSS_DATA_IN_1_HAS_TRI 0
#define BSS_DATA_IN_1_IRQ_TYPE NONE
#define BSS_DATA_IN_1_RESET_VALUE 0

/*
 * Macros for device 'bss_data_in_2', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_IN_2_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_IN_2_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_IN_2_COMPONENT_NAME bss_data_in_2
#define BSS_DATA_IN_2_BASE 0x40
#define BSS_DATA_IN_2_SPAN 32
#define BSS_DATA_IN_2_END 0x5f
#define BSS_DATA_IN_2_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_IN_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_IN_2_CAPTURE 0
#define BSS_DATA_IN_2_DATA_WIDTH 32
#define BSS_DATA_IN_2_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_IN_2_DRIVEN_SIM_VALUE 0
#define BSS_DATA_IN_2_EDGE_TYPE NONE
#define BSS_DATA_IN_2_FREQ 50000000
#define BSS_DATA_IN_2_HAS_IN 0
#define BSS_DATA_IN_2_HAS_OUT 1
#define BSS_DATA_IN_2_HAS_TRI 0
#define BSS_DATA_IN_2_IRQ_TYPE NONE
#define BSS_DATA_IN_2_RESET_VALUE 0

/*
 * Macros for device 'bss_data_in_3', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_IN_3_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_IN_3_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_IN_3_COMPONENT_NAME bss_data_in_3
#define BSS_DATA_IN_3_BASE 0x50
#define BSS_DATA_IN_3_SPAN 32
#define BSS_DATA_IN_3_END 0x6f
#define BSS_DATA_IN_3_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_IN_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_IN_3_CAPTURE 0
#define BSS_DATA_IN_3_DATA_WIDTH 32
#define BSS_DATA_IN_3_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_IN_3_DRIVEN_SIM_VALUE 0
#define BSS_DATA_IN_3_EDGE_TYPE NONE
#define BSS_DATA_IN_3_FREQ 50000000
#define BSS_DATA_IN_3_HAS_IN 0
#define BSS_DATA_IN_3_HAS_OUT 1
#define BSS_DATA_IN_3_HAS_TRI 0
#define BSS_DATA_IN_3_IRQ_TYPE NONE
#define BSS_DATA_IN_3_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_0', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_0_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_0_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_0_COMPONENT_NAME bss_data_out_0
#define BSS_DATA_OUT_0_BASE 0x60
#define BSS_DATA_OUT_0_SPAN 32
#define BSS_DATA_OUT_0_END 0x7f
#define BSS_DATA_OUT_0_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_0_CAPTURE 0
#define BSS_DATA_OUT_0_DATA_WIDTH 32
#define BSS_DATA_OUT_0_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_0_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_0_EDGE_TYPE NONE
#define BSS_DATA_OUT_0_FREQ 50000000
#define BSS_DATA_OUT_0_HAS_IN 1
#define BSS_DATA_OUT_0_HAS_OUT 0
#define BSS_DATA_OUT_0_HAS_TRI 0
#define BSS_DATA_OUT_0_IRQ_TYPE NONE
#define BSS_DATA_OUT_0_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_1', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_1_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_1_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_1_COMPONENT_NAME bss_data_out_1
#define BSS_DATA_OUT_1_BASE 0x70
#define BSS_DATA_OUT_1_SPAN 32
#define BSS_DATA_OUT_1_END 0x8f
#define BSS_DATA_OUT_1_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_1_CAPTURE 0
#define BSS_DATA_OUT_1_DATA_WIDTH 32
#define BSS_DATA_OUT_1_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_1_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_1_EDGE_TYPE NONE
#define BSS_DATA_OUT_1_FREQ 50000000
#define BSS_DATA_OUT_1_HAS_IN 1
#define BSS_DATA_OUT_1_HAS_OUT 0
#define BSS_DATA_OUT_1_HAS_TRI 0
#define BSS_DATA_OUT_1_IRQ_TYPE NONE
#define BSS_DATA_OUT_1_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_2', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_2_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_2_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_2_COMPONENT_NAME bss_data_out_2
#define BSS_DATA_OUT_2_BASE 0x80
#define BSS_DATA_OUT_2_SPAN 32
#define BSS_DATA_OUT_2_END 0x9f
#define BSS_DATA_OUT_2_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_2_CAPTURE 0
#define BSS_DATA_OUT_2_DATA_WIDTH 32
#define BSS_DATA_OUT_2_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_2_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_2_EDGE_TYPE NONE
#define BSS_DATA_OUT_2_FREQ 50000000
#define BSS_DATA_OUT_2_HAS_IN 1
#define BSS_DATA_OUT_2_HAS_OUT 0
#define BSS_DATA_OUT_2_HAS_TRI 0
#define BSS_DATA_OUT_2_IRQ_TYPE NONE
#define BSS_DATA_OUT_2_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_3', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_3_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_3_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_3_COMPONENT_NAME bss_data_out_3
#define BSS_DATA_OUT_3_BASE 0x90
#define BSS_DATA_OUT_3_SPAN 32
#define BSS_DATA_OUT_3_END 0xaf
#define BSS_DATA_OUT_3_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_3_CAPTURE 0
#define BSS_DATA_OUT_3_DATA_WIDTH 32
#define BSS_DATA_OUT_3_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_3_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_3_EDGE_TYPE NONE
#define BSS_DATA_OUT_3_FREQ 50000000
#define BSS_DATA_OUT_3_HAS_IN 1
#define BSS_DATA_OUT_3_HAS_OUT 0
#define BSS_DATA_OUT_3_HAS_TRI 0
#define BSS_DATA_OUT_3_IRQ_TYPE NONE
#define BSS_DATA_OUT_3_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_4', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_4_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_4_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_4_COMPONENT_NAME bss_data_out_4
#define BSS_DATA_OUT_4_BASE 0xa0
#define BSS_DATA_OUT_4_SPAN 32
#define BSS_DATA_OUT_4_END 0xbf
#define BSS_DATA_OUT_4_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_4_CAPTURE 0
#define BSS_DATA_OUT_4_DATA_WIDTH 32
#define BSS_DATA_OUT_4_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_4_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_4_EDGE_TYPE NONE
#define BSS_DATA_OUT_4_FREQ 50000000
#define BSS_DATA_OUT_4_HAS_IN 1
#define BSS_DATA_OUT_4_HAS_OUT 0
#define BSS_DATA_OUT_4_HAS_TRI 0
#define BSS_DATA_OUT_4_IRQ_TYPE NONE
#define BSS_DATA_OUT_4_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_5', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_5_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_5_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_5_COMPONENT_NAME bss_data_out_5
#define BSS_DATA_OUT_5_BASE 0xb0
#define BSS_DATA_OUT_5_SPAN 32
#define BSS_DATA_OUT_5_END 0xcf
#define BSS_DATA_OUT_5_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_5_CAPTURE 0
#define BSS_DATA_OUT_5_DATA_WIDTH 32
#define BSS_DATA_OUT_5_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_5_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_5_EDGE_TYPE NONE
#define BSS_DATA_OUT_5_FREQ 50000000
#define BSS_DATA_OUT_5_HAS_IN 1
#define BSS_DATA_OUT_5_HAS_OUT 0
#define BSS_DATA_OUT_5_HAS_TRI 0
#define BSS_DATA_OUT_5_IRQ_TYPE NONE
#define BSS_DATA_OUT_5_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_6', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_6_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_6_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_6_COMPONENT_NAME bss_data_out_6
#define BSS_DATA_OUT_6_BASE 0xc0
#define BSS_DATA_OUT_6_SPAN 32
#define BSS_DATA_OUT_6_END 0xdf
#define BSS_DATA_OUT_6_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_6_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_6_CAPTURE 0
#define BSS_DATA_OUT_6_DATA_WIDTH 32
#define BSS_DATA_OUT_6_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_6_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_6_EDGE_TYPE NONE
#define BSS_DATA_OUT_6_FREQ 50000000
#define BSS_DATA_OUT_6_HAS_IN 1
#define BSS_DATA_OUT_6_HAS_OUT 0
#define BSS_DATA_OUT_6_HAS_TRI 0
#define BSS_DATA_OUT_6_IRQ_TYPE NONE
#define BSS_DATA_OUT_6_RESET_VALUE 0

/*
 * Macros for device 'bss_data_out_7', class 'altera_avalon_pio'
 * The macros are prefixed with 'BSS_DATA_OUT_7_'.
 * The prefix is the slave descriptor.
 */
#define BSS_DATA_OUT_7_COMPONENT_TYPE altera_avalon_pio
#define BSS_DATA_OUT_7_COMPONENT_NAME bss_data_out_7
#define BSS_DATA_OUT_7_BASE 0xd0
#define BSS_DATA_OUT_7_SPAN 32
#define BSS_DATA_OUT_7_END 0xef
#define BSS_DATA_OUT_7_BIT_CLEARING_EDGE_REGISTER 0
#define BSS_DATA_OUT_7_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BSS_DATA_OUT_7_CAPTURE 0
#define BSS_DATA_OUT_7_DATA_WIDTH 32
#define BSS_DATA_OUT_7_DO_TEST_BENCH_WIRING 0
#define BSS_DATA_OUT_7_DRIVEN_SIM_VALUE 0
#define BSS_DATA_OUT_7_EDGE_TYPE NONE
#define BSS_DATA_OUT_7_FREQ 50000000
#define BSS_DATA_OUT_7_HAS_IN 1
#define BSS_DATA_OUT_7_HAS_OUT 0
#define BSS_DATA_OUT_7_HAS_TRI 0
#define BSS_DATA_OUT_7_IRQ_TYPE NONE
#define BSS_DATA_OUT_7_RESET_VALUE 0

/*
 * Macros for device 'sysid_qsys_0', class 'altera_avalon_sysid_qsys'
 * The macros are prefixed with 'SYSID_QSYS_0_'.
 * The prefix is the slave descriptor.
 */
#define SYSID_QSYS_0_COMPONENT_TYPE altera_avalon_sysid_qsys
#define SYSID_QSYS_0_COMPONENT_NAME sysid_qsys_0
#define SYSID_QSYS_0_BASE 0x10000
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_END 0x10007
#define SYSID_QSYS_0_ID 2882343476
#define SYSID_QSYS_0_TIMESTAMP 1455606431


#endif /* _ALTERA_HPS_H_ */
