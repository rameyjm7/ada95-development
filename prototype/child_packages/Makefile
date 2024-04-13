NAME := test_child_packages
DIR  := /home/jake/ada95-development/child_packages

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


