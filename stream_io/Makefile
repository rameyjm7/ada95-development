NAME := show_seq_float_io

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr show_float_stream
	gnatmake -P ${NAME}.gpr show_int_stream
	gnatmake -P ${NAME}.gpr show_string_stream

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


