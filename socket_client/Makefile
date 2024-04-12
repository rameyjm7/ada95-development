NAME := socket_client
DIR  := /home/jake/ada95-development/socket_client

all:
	cd ${DIR}
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr
	mv src/${NAME} bin/

clean:
	cd ${DIR}
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	cd ${DIR}
	./bin/${NAME}


