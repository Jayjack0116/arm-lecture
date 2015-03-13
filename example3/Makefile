CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O3 -ggdb -Wall
LDFLAGS = -fno-stack-protector
QEMUOP = qemu-arm -L /usr/arm-linux-gnueabihf

objects	= example3.o example3_1.o example3_2.o

default: example3 example3_1 example3_2

.PHONY: default clean

result: $(objects)
	$(CC) -o $@ $^

example3.o: example3.c

example3_1.o: example3_1.c

example3_2.o: example3_2.c

%.o: %.c 
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example3 

qemu: example3 example3_1 example3_2
	$(QEMUOP) ./example3
	$(QEMUOP) ./example3_1
	$(QEMUOP) ./example3_2
	
