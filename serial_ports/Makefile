NAME := serial_ports

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr read_serial_port
	gnatmake -P ${NAME}.gpr read_serial_port2
	gnatmake -P ${NAME}.gpr process_gps_data

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


