#!/bin/sh

read -p "num1 and num2：" a b

function gcd ()
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
 gcd a b
 echo " $a and $b の最大公約数 = $num1"