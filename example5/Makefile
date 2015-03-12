CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example5.o	

default: example5 example5_1 example5_2 example5_3

.PHONY: default clean

example5: $(objects)
	$(CC) -o $@ $^

example5_1: example5_1.o
	$(CC) -o example5_1 example5_1.o

example5_2: example5_2.o
	$(CC) -o example5_2 example5_2.o

example5_3: example5_3.o
	$(CC) -o example5_3 example5_3.o

example5.o: example5.c

example5_1.o: example5_1.c

example5_2.o: example5_2.c

example5_3.o: example5_3.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example5 example5_1.o example5_1 example5_2 example5_2.o example5_3 example5_3.o

qemu:
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5
	echo "---------------------------------------------------------------------"
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_1
	echo "---------------------------------------------------------------------"
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_2
	echo "---------------------------------------------------------------------"
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_3
