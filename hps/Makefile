TARGET = bss_hps
CROSS_COMPILE = arm-linux-gnueabihf-
CFLAGS = -static -g -Wall -I$(SOCEDS_DEST_ROOT)/ip/altera/hps/altera_hps/hwlib/include
LDFLAGS = -g -Wall
CC = $(CROSS_COMPILE)gcc
ARCH = arm

SOPCINFO = ../fpga/qsys/soc_system.sopcinfo

build: $(TARGET)
	@ chmod +x $(TARGET)

$(TARGET): src/main.o
	$(CC) $(LDFLAGS) $^ -o $@

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) *.a *.o *~

generate-hps-header:
	sopc-create-header-files $(SOPCINFO) --single src/hps.h --module hps_0
