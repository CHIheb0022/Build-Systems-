#Functions
#
# *) Remember CMAKE 
# 	function(<name> [<arg1> ...])
#   	<commands>
# 	endfunction()
#
#
# 1) define Function_Name
#      commands
#  endef
#
# Target:
# 	$(call Function_Name,Arguments)

# 2) Access Builtin Functions 
# 	target2:
#		@echo $(subst .c,.cpp, main.c test.c lcd.c)

# 3)
#Variables
# Variables can only be strings. You'll typically want to use :=, but = works
#########################################################################

define Display
	@echo " Entering Function "
	@echo "  0 	is   	$0"
    @echo "  1 	is   	$1"
	@echo "  2 	is  	$2"
	@echo "  @  is 		$@"
	@echo " Exit Function "
endef

x := chiheb
target1:
	$(call Display,hmida,$(x))
	@echo
	@echo "target is $@"

#########################################################################
#Exmaple for GNU Cmake built-in functions 

target2:
	@echo $(subst .c,.cpp, main.c test.c lcd.c)
	@echo $(patsubst %.c,%.o,x.c.c bar.c) 
	@echo $(sort zoo bar lose)
	@echo $(word 3, foo bar baz)
	@echo $(wordlist 2, 3, foo bar baz)
	@echo $(firstword foo bar)
	@echo $(lastword foo bar)
	


# % here means anytinhg like *

file := test.c 

build:
	@gcc $(file) -o runprogram

clean:
	@rm *.o
	@rm runprogram