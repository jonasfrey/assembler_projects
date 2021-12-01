#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
// compile and run
// we have to link the math library 'gcc ... -lm'
// gcc b64_encoder.c -lm -o b64_encoder  && ./b64_encoder 


int main()
{
    // char s_input[100] = "😀";
    // actually the strlen returns the number of bytes in the string
    // since emoji is a utf8 symbol which uses multiple bytes the strlen is 4
    // int n_number_of_bytes_in_input_string = strlen(s_input); 

    // char s_input[100] = "Test";
    // char s_input[100] = "a";
    // char s_input[2] = "aa";
    // char s_input[2] = "a\b";    
    // char s_input[] = "leck meine ayaaa";
    // char s_input[] = "aaa";
    // char s_input[] = "JSON is an open standard file format and data interchange format that uses human-readable text to store and transmit data objects consisting of attribute–value pairs and arrays. It is a common data format with diverse uses in electronic data interchange, including that of web applications with servers."; 
    char s_input[] = "asdf";
    // expected result 
    // SlNPTiBpcyBhbiBvcGVuIHN0YW5kYXJkIGZpbGUgZm9ybWF0IGFuZCBkYXRhIGludGVyY2hhbmdlIGZvcm1hdCB0aGF0IHVzZXMgaHVtYW4tcmVhZGFibGUgdGV4dCB0byBzdG9yZSBhbmQgdHJhbnNtaXQgZGF0YSBvYmplY3RzIGNvbnNpc3Rpbmcgb2YgYXR0cmlidXRl4oCTdmFsdWUgcGFpcnMgYW5kIGFycmF5cy4gSXQgaXMgYSBjb21tb24gZGF0YSBmb3JtYXQgd2l0aCBkaXZlcnNlIHVzZXMgaW4gZWxlY3Ryb25pYyBkYXRhIGludGVyY2hhbmdlLCBpbmNsdWRpbmcgdGhhdCBvZiB3ZWIgYXBwbGljYXRpb25zIHdpdGggc2VydmVycy4=

    char s_b64_mapping_table_array[64] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    int n_number_of_bytes_in_input_string = strlen(s_input);


    int n_number_of_equals_padding_to_append;

    if((n_number_of_bytes_in_input_string % 3) != 0){
        n_number_of_equals_padding_to_append = 3 - (n_number_of_bytes_in_input_string % 3); 
    }else{
        n_number_of_equals_padding_to_append = 0;
    }
    printf("n_number_of_equals_padding_to_append %u", n_number_of_equals_padding_to_append );
    
    int n_bit_index_in_byte_of_input_string = 0;
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


    // create string for b64 string 
    int n_length_of_b64_string_without_equals = ceil((n_number_of_bytes_in_input_string*8)/6.0);
    int n_length_of_b64_string_with_equals = n_length_of_b64_string_without_equals + n_number_of_equals_padding_to_append; 

    char *s_b64_encoded_string = malloc(n_length_of_b64_string_with_equals + 1);
    memset(s_b64_encoded_string, ' ', n_length_of_b64_string_with_equals);

    int n_equals_counter = 0;  
    for(n_equals_counter = 0; n_equals_counter < n_number_of_equals_padding_to_append; n_equals_counter ++){
        s_b64_encoded_string[n_length_of_b64_string_with_equals-(n_equals_counter+1)] = '=';
    }
    s_b64_encoded_string[n_length_of_b64_string_with_equals+1] = 0; // set terminator null byte 

    printf("\n s_b64_encoded_string : %s", s_b64_encoded_string);


    int n_b64_encoded_string_index = 0; 
    int n_b64_char_in_decimal = 0; 
    int n_exponent = 1; 
    
    //convert byte to binary string
    char s_bits[8+1] = "00000000\0";
    // char s_b64_string[6+1] = "000000\0"; 
        
    for(int counter = 0; counter < n_number_of_bytes_in_input_string; counter++){
        
        printf("\n current byte is : %u", s_input[counter]);
        
        int n_byte_in_decimal = s_input[counter];
        int n_rest = n_byte_in_decimal; 

        for(int n_bit_index = 0; n_bit_index < 8; n_bit_index++){

            n_bit_index_in_byte_of_input_string = (counter * 8) + n_bit_index; 

            n_exponent = 7 - n_bit_index;   
            // printf("\nbit index is %u", n_bit_index);
            
            int n_polynom_term = pow(2, n_exponent);

            // printf("\n n_polynom_term is %u", n_polynom_term);
            
            if(n_polynom_term <= n_rest){
                n_rest = n_rest - n_polynom_term; 
                s_bits[n_bit_index] = '1';
                s_input_as_bits[n_bit_index_in_byte_of_input_string] = '1'; 
            }else{
                s_bits[n_bit_index] = '0'; 
                s_input_as_bits[n_bit_index_in_byte_of_input_string] = '0'; 
            }

            // s_b64_string[(n_bit_index_in_byte_of_input_string % 6)] = s_input_as_bits[n_bit_index_in_byte_of_input_string];
            
            int exponent_of_polynom_term_of_6bit_package = 5 - (n_bit_index_in_byte_of_input_string % 6);

            int n_polynom_term_of_6bit_package = pow(2, exponent_of_polynom_term_of_6bit_package);
            
            // printf("\n n_polynom_term_of_6bit_package is %u", n_polynom_term_of_6bit_package);

            
            if(s_input_as_bits[n_bit_index_in_byte_of_input_string] == '1'){
                // printf("\n s_input_as_bits[n_bit_index_in_byte_of_input_string] is %u", s_input_as_bits[n_bit_index_in_byte_of_input_string]);
                //accumulate polynom term
                n_b64_char_in_decimal = n_b64_char_in_decimal + n_polynom_term_of_6bit_package;
            }
            // printf("\nn_b64_char_in_decimal %u", n_b64_char_in_decimal);
            
            printf("\n n_bit_index_in_byte_of_input_string mod 6 %u", (n_bit_index_in_byte_of_input_string % 6));

            if((n_bit_index_in_byte_of_input_string+1) % 6 == 0){
            
                printf("\n n_b64_char_in_decimal is %u", n_b64_char_in_decimal);

                s_b64_encoded_string[n_b64_encoded_string_index] = s_b64_mapping_table_array[n_b64_char_in_decimal];
                // reset 
                printf("\ns_b64_encoded_string[n_b64_encoded_string_index]  %u", s_b64_encoded_string[n_b64_encoded_string_index] );
                
                n_b64_char_in_decimal = 0; 

                // for(int n_6bit_package_bit_index = 0; strlen(s_b64_string)+1; n_6bit_package_bit_index++){
                //     int exponent_of_polynom_term_of_6bit_package = strlen(s_b64_string)-n_6bit_package_bit_index; 
                //     int n_polynom_term_of_6bit_package = pow(2, exponent_of_polynom_term_);
                //     if()
                // } 
                //reset string 
                // s_b64_string[6] = "000000";

                n_b64_encoded_string_index++;
            }
        }


    }

    // +1 because null terminator
    if(n_b64_encoded_string_index+1 == n_length_of_b64_string_without_equals){
        
        printf("\n n_b64_char_in_decimal is %u", n_b64_char_in_decimal);

        s_b64_encoded_string[n_b64_encoded_string_index] = s_b64_mapping_table_array[n_b64_char_in_decimal];
    }

    printf("\n s_bits is %s", s_bits);
    printf("\n s_input_as_bits is %s", s_input_as_bits);
    printf("\n s_b64_encoded_string is  %s", s_b64_encoded_string);

    printf("\n b64 encoded string: smthng%s", s_equals_padding);
    // printf("strlen is %u", strlen(s_input));

    return 0;
}