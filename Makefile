TRAGET := pcm2aac

CC := gcc
CFLAG := -I./include -lm

all : $(TRAGET) 

$(TRAGET) : main.c lib/libfaac.a
	$(CC) $^ $(CFLAG) -o $@

clean : 
	rm -rf $(TRAGET) *.aac
.PHONY := clean

