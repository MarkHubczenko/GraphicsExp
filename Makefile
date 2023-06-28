#This sample Makefile defines five simple rules:
# all: Cleans the compiled files from the target folder, then compiles and run the test code.
# default: Delegates to main.cpp.
# main.cpp: Compiles the single source file.
# test: Delegates to main.cpp, then runs the output main function passing an argument.
# clean: Deletes compiled files.

.DEFAULT_GOAL := main

all: clean main

# Note -g is for the debugger
main:
	g++ -I src/include -L src/lib -o main main.cpp -lmingw32 -lSDL2main -lSDL2 -g

clean:
	del /q main.exe