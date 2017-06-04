#!/bin/sh

function gcd()
 {
   num1=$1
   num2=$2
   r=1
   until [ "$r" -eq 0 ]
   do
     let "r = $num1 % $num2"
     num1=$num2
     num2=$r
   done
 }
 gcd 24 86
 echo " 24 and 86 の最大公約数 = $num1"
