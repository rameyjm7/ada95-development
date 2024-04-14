NAME := show_seq_float_io

all:
	mkdir -p bin
	mkdir -p obj
	gnatmake -P ${NAME}.gpr show_seq_float_io
	gnatmake -P ${NAME}.gpr show_seq_rec_io
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


