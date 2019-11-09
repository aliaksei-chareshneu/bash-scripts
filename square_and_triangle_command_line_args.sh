#!/bin/bash
# drawing a square and a triangle; 
# size is supplied as a command line argument;
# uses functions, and checks 
# the number of arguments.
N=$1
I=0
J=0
#echo -n "Please, enter the number of rows/columns: "
#read N
if [[ $# -eq 1 ]]; then
    echo "Number of argument is okay"
else
    echo "Number of arguments is not appropriate!11"
    exit 1
fi

if [[ $1 -gt 0 ]]; then
    echo "The first argument is greater than zero"
else
    echo "The first argument is less or equal to zero!"
    exit 2
fi

printf "Entered value: %d\n" $N

function draw_figure () {
N=$1
#printf "Entered value: %d\n" $N
if [[ "$2" == "square" ]]; then
    #printf "Entered value: %d\n" $N
    for ((I=0;I < N;I++)); do
        for ((J=0;J < N;J++)); do
            echo -n "X "
        done
        J=0
    printf "\n"
    done
    printf "\n"

elif [[ "$2" == "triangle_1" ]]; then
    #printf "Entered value: %d\n" $N
    for((I=0;I < N;I++)); do
        for((J=0;J < N-I;J++)); do
            echo -n "X "
        done
        J=0    
    printf "\n"
    done
    printf "\n"

else
    echo "Error in figure serial number!11"
    exit 3
fi
}

draw_figure $1 "square"
draw_figure $1 "triangle_1"
