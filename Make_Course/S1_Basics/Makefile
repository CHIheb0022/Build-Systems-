# what is Make ?

# - Make is a scripting tool is used for building executable 
# 	 according to commands
 
# - Make tool parse an input file " Makefile" to define rules that it will run 

# - two types of Make ( GNU Make - Borland Make)
###########################################################################

# Why we need Make ?

# to organize the compilation process
# to run our tools and scripts
# to automate the process 
# to be fully control on the outputs and its time 
#########################################################################

# is it must to be Makefile ?

#	no you can use   -f FILE, --file=FILE, --makefile=FILE
# make -f [file_name]
#########################################################################
# Basic Syntax

#1) setting rule 

# Target : prerequisites
#<tab> Recipe


#2) Define Variable

# files = main.cpp
# files += hello.cpp

#3) substitute variable 

# echo $(files)

#4) Disable Echo 
#	Using @ ex : @echo "hello"

#5) Access Enviroment Variable
#	it is accessible ex : echo $(PATH)

#6) Access shell commands
#	example
# 		clean:
#			 @rm *.o
#			 @echo "`date` done" > log.txt

#7) Access external scripts 
#	example
# 		test:
#			python analysis.py

#8) run make
# we can use make according to the following syntax
# make [target] [options]
# if we only use make
# it will be interpreted as make all and sart runnig targets one by one starting from the first. 

#########################################################################
file = test.c 
My_PATH = "/root/chiheb/build_system/Make_Course/Makefile"

display1:
	@echo $(My_PATH)

all: display1 
	gcc $(file) -o cprogram

dispaly2: all
	@echo "current files after building:"
	@ls

test: 
	@python analysis.py

compile:
	gcc -c $(file)

clean:
	@rm *.o
	@echo "Deleting done : `date` " > log.txt