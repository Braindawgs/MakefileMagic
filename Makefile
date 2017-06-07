CC = gcc
CFLAGS = -Wall
VPATH = dir2
INCLUDES = -I/home/braindawgs/Documents/C_Makefile_tryout/dir2

%.o: %.c 
	$(CC) -c 


all:main.o funk.o
	$(CC)  $(CFLAGS) -o hello main.o funk.o

main.o:main.c
	$(CC) $(CFLAGS) $(INCLUDES) -c main.c

funk.o: funk.c funk.h
	$(CC) $(CFLAGS) -c $<
clear:
	rm -rf *.o hello
