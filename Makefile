CC = icc
CFLAGS = -O3 -qopenmp -std=c99
LDFLAGS = -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm

.PHONY: all clean

all: pi

pi: estimate_pi.c
	$(CC) $(CFLAGS) -o estimate_pi estimate_pi.c  $(LDFLAGS)
	$(CC) $(CFLAGS) -o estimate_pi_parallel estimate_pi_parallel.c $(LDFLAGS)

clean:
	rm -f estimate_pi estimate_pi_parallel pi.o* *.o4*
