NAME := test_child_packages

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


