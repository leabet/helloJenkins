all: Hello.o Print.o
	gcc -o Hello Hello.o Print.o

Hello.o: Hello.c
	gcc -c Hello.c -I .

Print.o: Print.c
	gcc -c Print.c -I .

clean:
	rm -f Hello.o Print.o Hello
