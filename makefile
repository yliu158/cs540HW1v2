CPPFLAGS= -Wall -Wextra -pedantic

all:test.cpp
	g++ -std=c++11 test.cpp -o test -ldl

run:
	g++ -std=c++11 test.cpp -o test -ldl
	./test

checkmem:
	g++ -std=c++11 -g test.cpp -o test -ldl
	valgrind --leak-check=full -v ./test

clean:
	rm -fr test
