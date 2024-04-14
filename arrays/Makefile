NAME := test_arrays

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr greet
	gnatmake -P ${NAME}.gpr array_bounds_example
	gnatmake -P ${NAME}.gpr month_example
	gnatmake -P ${NAME}.gpr runtime_error
	gnatmake -P ${NAME}.gpr range_example
	gnatmake -P ${NAME}.gpr string_literals
	gnatmake -P ${NAME}.gpr read_bounds
	gnatmake -P ${NAME}.gpr indefinite_subtypes
	gnatmake -P ${NAME}.gpr unconstrained_string
	gnatmake -P ${NAME}.gpr array_of_strings
	gnatmake -P ${NAME}.gpr array_slices
	gnatmake -P ${NAME}.gpr renaming

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


