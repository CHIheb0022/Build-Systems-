#loops
# .remember CMAKE
#
#	
#	foreach(X IN LISTS A B C D E)
#    	message(STATUS "X=${X}")
#	endforeach()
###############
# 1) loop in Makefile
# 
# A -bash style
#  for i in $(LIST); do \
#		echo $$i; \
#	done
#
# B- foreach function
# $(foreach  var,list,text)
###############
#
#
# 2) if condition
#	ifeq (arg1, arg2)
# 	ifeq 'arg1' 'arg2'
# 	ifeq "arg1" "arg2"
# 	ifeq "arg1" 'arg2'
# 	ifeq 'arg1' "arg2"
#
#  ifneq (arg1, arg2)
#  ifneq 'arg1' 'arg2'
#  ifneq "arg1" "arg2"
#  ifneq "arg1" 'arg2'
#  ifneq 'arg1' "arg2"
#
# ifdef variable-name
#  bar=true
#  foo = true
#  ifdef $(foo)
#  @echo "true" 
#  endif
# ifndef variable-name

#########################################################################

#using for like bash script
LIST = one two three
loop1:
	@for i in $(LIST); do \
		echo $$i; \
	done
##################
# using foreach $(foreach  var,list,text)
list = foo bar baz
list_2 = $(foreach i,$(list),"\nWord is -$(i)")

files = test.c 
loop2:
	@echo $(list_2)
	
##################

#It's like we are using preprocessor directive #define #ndefine .. in C programing:

ifeq '$(files)'  'test.c ' #Don't forget to ADD a space after the varibale name like this 'chiheb.c '
cond1:	 
	@echo "true"
endif 

#We can use ifcondition syntax within a target (using a tabulation will result an error) 

cond2:
ifeq '$(files)'  'test.c '
		@echo "true" 
endif 

bar=true
foo = bar
cond3: 
ifdef $(foo)
	@echo "true" 
endif

##################
files+=test2.c

build: compile
	@gcc *.o -o runprogram

compile:
	@gcc -c $(files)

clean:
	@rm *.o
	@rm runprogram

##### if test2 exist build First_target else build Second_target

dis:
	@echo $(files)
	@echo $(len $(files))

conditional_build:
ifeq ($(len $(files)),2)
	@echo "compiling c files"
	@gcc -c $(files)
	@echo "linking to runprogram"
	@gcc *.o -o runprogram2
	@echo "run program2"

else
	@echo "compile and link directly: cause we have one .c file"
	@gcc $(files) -o runprogram1
	@echo "run program1"
endif

