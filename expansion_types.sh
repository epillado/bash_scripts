#! /usr/bin/bash
# There are eight kinds of expansion performed in Bash:
# - brace expansion
# - tilde expansion
# - parameter and variable expansion
# - command substitution
# - arithmetic expansion
# - word splitting
# - filename expansion
# - And on systems that can support it, process substitution
# # expansion_types.sh : Shows some  expansions types available in Bash. # #
my_array[1]="ONE"
param_name="my_param"
my_param=5

echo Bash shell expansions
echo Brace expansion: -{a,b,c,d,e}-
echo Tilde expansion: ~
echo Parameter expansion: ${SHELL} or $SHELL or ${my_array[1]}
echo Parameter expansion with indirection: The value of ${param_name} is ${!param_name}
echo Parameter expansion when Value unset or null: my_other_param is ${my_other_param-nothing}
echo Parameter expansion, assign to parameter when unset or null and then substitute:
x=${var:=DEFAULT} 
echo $var, $x
echo Command substitution: $(date +%a) or `date +%a`
echo Arithmetic expansion: $(( 1+1 )) or $(( $my_param*2 ))
echo Proccess substituion:
wc -w <(ls) <(ls)
echo Filename expansion: "*" expands to: *




