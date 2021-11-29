#include <stdio.h>
#include <math.h>
// compile and run
// we have to link the math library 'gcc ... -lm'
// gcc math_lib_test.c -o math_lib_test && ./math_lib_test -lm


int main()
{
    float two = 2;
    
    // this would not work
    // int n_two_pow_two = pow(2,two);
    
    // this would not work
    // int n_two_pow_two = pow(two,2); 

    // but this would work
    // int n_two_pow_two = pow(2,2);

    // if we want to use a variable
    // we have to convert the first argument to float
    // wtf... 
    //int n_two_pow_two = pow((float)two, 2); 
    double n_two_pow_two = pow(two,  (double)2); 

    printf("2^2 equals %f", n_two_pow_two);
    
    return 0;
}