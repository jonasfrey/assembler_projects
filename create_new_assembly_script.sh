echo "mkdir ..."
mkdir $1 

mmae_scriptname="make_make_and_execute"

echo "cp ..."

cp .$mmae_scriptname.sh $1/$mmae_scriptname.sh 

me=`basename "$0"`

echo "echo ... > file"

echo "
;  Author : created by script $me
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./$mmae_scriptname 

"> $1/$1.asm