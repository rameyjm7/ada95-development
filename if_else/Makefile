NAME := check_positive
DIR  := /home/jake/ada95-development/if_else

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr

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


