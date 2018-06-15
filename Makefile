CC = gcc
SRC_DIR = .
CFLAGS = -Wall
#VPATH = dir2
INCLUDES = $(SRC_DIR)/dir2

%.o: %.c 
	$(CC) -c 


all:main.o funk.o
	$(CC)  $(CFLAGS) -o hello main.o funk.o

main.o:main.c
	$(CC) $(CFLAGS) -I$(INCLUDES) -c main.c

funk.o: $(INCLUDES)/funk.c $(INCLUDES)/funk.h
	$(CC) -c -I$(INCLUDES) $<
clear:
	rm -rf *.o hello
