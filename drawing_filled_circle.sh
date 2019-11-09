#!/bin/bash
#Drawing a filled circle from X letters. Radius is supplied by the user.
I=0
N=0
J=0
NN=0
II=0
JJ=0
echo -n "Please, enter the radius: "
read N
printf "Entered value: %f\n" $N
while [[ I -lt 2*N+1 ]]; do
    while [[ J -lt 2*N+1 ]]; do
        ((NN = N * N))
        ((II = (I - N) * (I - N)))
        ((JJ = (J - N) * (J - N)))
        if [[ NN -ge II+JJ-N+1 ]]; then
            echo -n "X "
        else
            echo -n "  "
        fi
    ((J = J + 1))
    done
    ((I = I + 1))
    J=0    
printf "\n"
done
