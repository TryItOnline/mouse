WARN = -ansi -Wall -Wextra -Wpedantic
OPT = -O2 -s
LIBS = -lm
CFLAGS = $(WARN) $(OPT) $(LIBS)

.PHONY: all clean

all: mouse79 mouse83 mouse2002

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f mouse79 mouse83 mouse2002
