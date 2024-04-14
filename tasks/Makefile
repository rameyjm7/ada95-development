NAME := test_tasks

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr show_simple_task
	gnatmake -P ${NAME}.gpr run_tasks

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


