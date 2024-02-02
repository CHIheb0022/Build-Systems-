#1)Built-in rules 
# make -p : this will display built-in rules
#build: main.o test.o
#var2=$(file:.c=.o)
#make -r 
#
#2)threads make -j 
#3) make --debug
#
#########################################################################
include makeconfig
	
#Using built-in Make rules to compile main.c and test.c to provide main.o and test.o (just run make build)
#To disable this use the -r option
build: main.o test.o
	$(CC) $^ -o runprogram

#In order to automate the process (withiut listing the prerequiests .o as u can see in the target 'build' above)
var2=$(file:.c=.o) # refer to makeconfig (this will compile every .c in the file variable defined in the makeconfig)
build2: $(var2)
	@echo "Compiling is done"
	@echo "Var2 is: $(var2)"

#linking 
build3:build2
	$(CC) $(var2) -o runprogram

.PHONY: clean
clean:
	@if [ -e $(PATH_TO_OBJECT) ]  ; \
	then \
		echo "file exist" ; \
		rm *.o ; \
		rm runprogram ; \
	fi;