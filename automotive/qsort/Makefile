CC = riscv64-unknown-elf-gcc
CFLAGS = -static -s -O3

FILE1 = qsort_small.c
FILE2 = qsort_large.c

all: qsort_small qsort_large

qsort_small: qsort_small.c Makefile
	$(CC) $(CFLAGS) qsort_small.c -o qsort_small -lm
qsort_large: qsort_large.c Makefile
	$(CC) $(CFLAGS) qsort_large.c -o qsort_large -lm

clean:
	rm -rf qsort_small qsort_large output*
