
all: main

main: main.o 
	gcc -g -o $@ $^

%.o: %.c *.h
	gcc -std=c99 -pedantic -Wformat -Wreturn-type -g -c $< -o $@