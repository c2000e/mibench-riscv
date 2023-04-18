CC = riscv64-unknown-elf-gcc
CFLAGS = -static -s -O3

FILE = bitcnt_1.c bitcnt_2.c bitcnt_3.c bitcnt_4.c bitcnts.c bitfiles.c bitstrng.c bstr_i.c 

bitcnts: ${FILE} Makefile
	$(CC) $(CFLAGS) ${FILE} -o bitcnts

clean:
	rm -rf bitcnts output*
