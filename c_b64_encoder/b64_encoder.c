#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
// compile and run
// we have to link the math library 'gcc ... -lm'
// gcc b64_encoder.c -o b64_encoder && ./b64_encoder -lm


int main()
{
    // char s_input[100] = "😀";
    // actually the strlen returns the number of bytes in the string
    // since emoji is a utf8 symbol which uses multiple bytes the strlen is 4
    // int n_number_of_bytes_in_input_string = strlen(s_input); 

    // char s_input[100] = "Test";
    // char s_input[100] = "a";
    char s_input[100] = "aa";

    int n_number_of_bytes_in_input_string = strlen(s_input); 
    
    int n_number_of_equals_padding_to_append = 3 - (n_number_of_bytes_in_input_string % 3); 
    
    // printf("num of equals %u", n_number_of_equals_padding_to_append);

    char *s_equals_padding = malloc(n_number_of_equals_padding_to_append + 1);
    memset(s_equals_padding, '=', n_number_of_equals_padding_to_append);
    s_equals_padding[n_number_of_equals_padding_to_append] = 0; // a string must be terminated with 0 

    // int counter = 0; 
    
    // create string for bits 
    int n_length_of_bits_string = n_number_of_bytes_in_input_string*8;
    char *s_input_as_bits = malloc(n_length_of_bits_string+1);
    memset(s_input_as_bits, '0', n_length_of_bits_string);
    s_input_as_bits[n_length_of_bits_string] = 0; // set terminator null byte 

    // int n_two_pow_two = pow(2,2);
    // printf("2^2 equals %u", n_two_pow_two);


    printf("s input as bits %s", s_input_as_bits);

    for(int counter = 0; counter < n_number_of_bytes_in_input_string; counter++){
        printf("\n current byte is : %u", s_input[counter]);
        int n_byte_in_decimal = s_input[counter];
        int n_rest = n_byte_in_decimal; 
        //convert byte to binary string
        char s_bits[8+1] = "00000000\0";
        for(int bit_index = 7; bit_index >= 0; bit_index--){
            
            printf("\nbit index is %u", bit_index);
            int n_polynom_term = pow(2, bit_index);

            // if(n_polynom_term < n_rest){
            //     int n_rest = n_byte_in_decimal - n_polynom_term; 
            //     s_bits[bit_index] = 49;// '0' is decimal 49 in the ascii table 
            // }
        }
    }

    printf("\n b64 encoded string: smthng%s", s_equals_padding);
    // printf("strlen is %u", strlen(s_input));

    return 0;
}