NAME := file_io

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr file_io_write
	gnatmake -P ${NAME}.gpr file_io_write_read

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


