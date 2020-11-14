#!/bin/sh

{
    declare -Ap add=([action]="add" [synchronously_draw]="false" [identifier]="abcd" [x]="$1" [y]="$2" [width]="$3" [height]="$4" [path]="$5")
    read
    declare -Ap remove=([action]="remove" [identifier]="abcd")
} | ueberzug layer --parser bash

