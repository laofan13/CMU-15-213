CC = gcc
CFLAGS = -c
FLAG32 = -m32
FLAG64= -m64

## On Cygwin
#FLAG64 =
# EXE=.exe
## On Linux
EXE=

all:examples.64d examples.32d exploit-raw.txt

examples.64d:examples.s
	$(CC) $(CFLAGS) $(FLAG64) examples.s -o examples.o
	objdump -d examples.o > examples.64d

examples.32d:examples.s
	$(CC) $(CFLAGS) $(FLAG32) examples.s -o examples.o
	objdump -d examples.o > examples.32d

exploit-raw.txt: exploit.txt
	./hex2raw < exploit.txt > exploit-raw.txt