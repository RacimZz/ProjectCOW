CC=clang
CFLAGS=-Wall -g

automate: tama_vache.o 
	$(CC) -o $@ $^

