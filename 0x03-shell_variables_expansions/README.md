Shell, init files, variables and expansions
0.script that creates an alias is alias ls="rm *"
1.script that prints hello user is echo "hello $USER"
2.script that prints the path is echo "hello $USER"

4.script that prints environment variables is printenv
5.script that prints environment variables is set
6.script that creates a new local variable is BEST="School"
7.script that creates a new global variable is export BEST="School"
8.script that prints the result of the addition of 128 with the value stored in the environment variable is echo $((128+TRUEKNOWLEDGE))
9.script that prints the result of POWER divided by DIVIDE, followed by a new line is echo $(($POWER/DIVIDE))
10.script that displays the result of BREATH to the power LOVE is echo $(($BREATH**$LOVE))
11.script that converts a number from base 2 to base 10 is echo $((2#$BINARY))
12.script that prints all possible combinations of two letters, except oo is echo {a..z}{a..z} | tr " " "\n" | grep -v "oo"
13.script that prints a number with two decimal places, followed by a new line is printf "%.2f\n" $NUM
14.script that converts a number from base 10 to base 16 is printf "%x\n" $DECIMAL
15.script that encodes and decodes text using the rot13 encryption. Assume ASCII is tr 'A-Za-z' 'N-ZA-Mn-za-m'
16.script that prints every other line from the input, starting with the first line is cat -n | grep [13579][[:space:]] | tr -s ' ' | cut -f2
17.shell script that adds the two numbers stored in the environment variables WATER and STIR and prints the result is printf "%o\n" $(($((5#$(echo $WATER | tr water 01234))) + $((5#$(echo $STIR | tr stir. 01234))) )) | tr 01234567 bestchol
