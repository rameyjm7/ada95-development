NAME := multi_target
DIR  := /home/jake/ada95-development/multi_target_gpr

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P multi_target.gpr for_loop_reverse
	gnatmake -P multi_target.gpr for_loop

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


