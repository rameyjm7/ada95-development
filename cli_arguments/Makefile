NAME := cli_arguments

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr print_cli_args

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


