NAME := multi_target

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P multi_target.gpr for_loop_reverse
	gnatmake -P multi_target.gpr for_loop

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


