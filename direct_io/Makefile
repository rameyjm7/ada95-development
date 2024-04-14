NAME := show_dir_float_io

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr show_dir_float_io
	gnatmake -P ${NAME}.gpr show_dir_float_in_out_file
	# gnatmake -P ${NAME}.gpr show_text_file_input_except

clean:
	rm -rf obj
	rm -rf bin
	rm -rf *.o
	rm -rf *.stderr
	rm -rf *.stdout
	rm -rf *.ali

run:
	./bin/${NAME}


