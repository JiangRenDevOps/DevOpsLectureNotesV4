#!/usr/bin/env bash

# # scriptName=$0

# # echo "value of varible in position 0 is $scriptName"

# name=$1

# echo "my name is $name"



# echo $name

# echo "Welcome" $name

# echo "Welcome ${name}"

# echo 'Welcome ${name}'

# echo 'Welcome (name)'

# read name

# echo "Welcome $name"

# execute command

# echo $(ls)


# # +, - , * , /

# read X
# read Y

# X+Y
# X-Y
# X*Y
# X/Y

# echo $((5+3))
# echo $((X+Y))
# echo $((X-Y))
# echo $((X*Y))
# echo $((X/Y))


# read X
# read Y
# [[ $X -gt $Y ]] && echo "$X is greater than $Y"
# [[ $X -eq $Y ]] && echo "$X is equal to $Y"
# [[ $X -lt $Y ]] && echo "$X is less than $Y"

# if (( $X > $Y )); then
#     printf "$X is greater than $Y"
# elif (( $X == $Y )); then
#     printf "$X is equal to $Y"
# else
#     printf "$X is less than $Y"
# fi


# # Anything inside single parentheses is considered as command and executed as separate subprocess.
# read input
# # || means OR in condition && means AND condition
# if [ $input = "Y" ] && [ $input = "y" ]; then
# # if (($input > 0)) || (($input < 10 )); then
#     echo YES
# else
#     echo NO
# fi

read a
read b
read c

if [ $a -eq $b ] || [ $a -eq $c ] || [ $c -eq $b ];then
    if [ $((a+b)) -eq $((c*2)) ];then
        echo "EQUILATERAL"
    else
        echo "ISOSCELES"
        fi
else
    echo "SCALENE"
    fi
