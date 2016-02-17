#define soc_cv_av

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "soc_cv_av/socal/socal.h"
#include "soc_cv_av/socal/hps.h"
#include "soc_cv_av/socal/alt_gpio.h"
#include "hps.h"

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

int main() {
  uint8_t command = 0x8D;
  uint64_t address = 0x100103000137;
  uint16_t sv = 0x0000;
  uint32_t data = 0x00640000;

  // Setup mem-map.

  int fd = open("/dev/mem", (O_RDWR | O_SYNC));

  if (fd == -1) {
    printf("Error: Could not open /dev/mem\n");
    return 1;
  }

  void* virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED,
    fd, HW_REGS_BASE);

  if (virtual_base == MAP_FAILED) {
    printf("Error: mmap failed\n");
    close(fd);
    return 1;
  }

  // Process Soundweb data.

  void* command_ptr = virtual_base +
    (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_IN_0_BASE);

  void* addr_0_3_ptr = virtual_base +
    (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_IN_1_BASE);

  void* addr_4_5_sv_ptr = virtual_base +
    (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_IN_2_BASE);

  void* data_ptr = virtual_base +
    (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_IN_3_BASE);

  void* packet_0_3_ptr = virtual_base +
    (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_0_BASE);

  void* packet_4_7_ptr = virtual_base +
    (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_1_BASE);

  // void* packet_8_11_ptr = virtual_base +
  //   (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_2_BASE);

  // void* packet_12_15_ptr = virtual_base +
  //   (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_3_BASE);

  // void* packet_16_19_ptr = virtual_base +
  //   (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_4_BASE);

  // void* packet_20_23_ptr = virtual_base +
  //   (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_5_BASE);

  // void* packet_24_27_ptr = virtual_base +
  //   (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_6_BASE);

  // void* packet_28_ptr = virtual_base +
  //   (unsigned long)(ALT_LWFPGASLVS_OFST + BSS_DATA_OUT_7_BASE);

  *(uint32_t*) command_ptr = command;
  *(uint32_t*) addr_0_3_ptr = address >> 16;
  *(uint32_t*) addr_4_5_sv_ptr = ((address & 0xFFFF) << 16) | sv;
  *(uint32_t*) data_ptr = data;

  printf("cmd: 0x%lu addr: 0x%lu sv: 0x%lu data: 0x%lu\n",
    (unsigned long) command,
    (unsigned long) address,
    (unsigned long) sv,
    (unsigned long) data
  );

  printf("packet: 0x%u%u\n",
    *(unsigned int*) packet_0_3_ptr,
    *(unsigned int*) packet_4_7_ptr
  );

  // Cleanup mem-map.

  if (munmap(virtual_base, HW_REGS_SPAN) != 0) {
    printf("Error: munmap failed\n");
    close(fd);
    return 1;
  }

  close(fd);

  return 0;
}
