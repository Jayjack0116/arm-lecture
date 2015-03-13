CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector
QEMUOP = qemu-arm -L /usr/arm-linux-gnueabihf
ECHO = echo "---------------------------------------------------------------------"

objects	= example5.o example5_1.o example5_2.o example5_3.o

default: example5 example5_1 example5_2 example5_3

.PHONY: default clean

result: $(objects)
	$(CC) -o $@ $^
	
example5.o: example5.c

example5_1.o: example5_1.c

example5_2.o: example5_2.c

example5_3.o: example5_3.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example5 example5_1.o example5_1 example5_2 example5_2.o example5_3 example5_3.o

qemu:
	$(QEMUOP) ./example5
	$(ECHO)
	$(QEMUOP) ./example5_1
	$(ECHO)
	$(QEMUOP) ./example5_2
	$(ECHO)
	$(QEMUOP) ./example5_3
