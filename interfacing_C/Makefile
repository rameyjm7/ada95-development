NAME := interfacing_C

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr show_c_func

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


