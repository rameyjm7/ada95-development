NAME := socket_client

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr
	mv src/${NAME} bin/

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


