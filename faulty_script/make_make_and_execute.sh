#!/bin/bash
msg_provide_file_name="please provide filename './make_make.sh file_name_here"\'
search_dir=.
asm_file_counter=0
asm_file_name=""

for entry in "$search_dir"/*
do
    if [[ $entry == *".asm" ]]; then
        asm_file_counter=$((asm_file_counter+1))
        asm_file_name=$entry
        if (($asm_file_counter > 1)); then 
            echo "multiple"
            break
        fi 

    fi
done


if (($asm_file_counter > 1)) || (($asm_file_counter == 0)); then 
    if [ $# -eq 0 ]
    then
        echo $msg_provide_file_name
    fi
fi 


echo $asm_file_name

IFS='/' read -ra slashes_array <<< "$asm_file_name"
IFS='.' read -ra dots_array <<< "${slashes_array[-1]}"

# { # try
#     unset 'dots_array[-1]' &&
#     #save your output
# } || { # catch
#     # save log for exception 
# }

file_name=""

for i in "${dots_array[@]}"; do
    # process "$i"
    if [ "$i" == "asm" ]; then 
        continue
    fi
    file_name+=$i
    
done

echo "
$file_name: $file_name.o
	ld -o $file_name $file_name.o
$file_name.o:
	nasm -f elf64 -g -F dwarf $file_name.asm 

clean:
	rm -f $file_name
	rm -f $file_name.o 

" > ./Makefile

echo "===================="
echo "-@-$ make"

make

chmod +x ./$file_name

./$file_name