#!/bin/bash
notes=(12 8 15 10 17 6 11)
admis=0

for n in "${notes[@]}"; do
    if (( n >= 16 )); then
        mention="trés bien"
        admis+=1
    elif (( n >= 12 )); then
        mention="bien"
        admis+=1
    elif (( n >= 10 )); then
        mention="passable"
        admis+=1
    else
        mention="recalé"
    fi
    
    printf "%2d : %s\n" "$n" "$mention"
done

printf "%d admis" "$admis"