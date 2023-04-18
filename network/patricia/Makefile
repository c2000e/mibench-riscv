CC = riscv64-unknown-elf-gcc
CFLAGS = -static -s -O3

patricia: patricia.c patricia_test.c
	$(CC) $(CFLAGS) patricia.c patricia_test.c -o patricia

clean:
	rm -rf patricia output*
