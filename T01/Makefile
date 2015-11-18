CC = gcc
CFLAGS = -Wall -g
LDFLAGS = -lm

PROG = log

all: log

t1.o: t1.c

log: t1.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
	
clean:
	rm -f *.o $(PROG)