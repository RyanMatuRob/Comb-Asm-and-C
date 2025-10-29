//Write a C program to calculate and display the factorial of a number entered by the user.
//factorial of a number n = n * (n-1) * (n-2) * ... * 1. 
//scanf() - used from stdio.h to take input from user
// this is a simple program for whole number factorial calculation
#include <stdio.h>
int main() {

    int number;
    int factorial(int number) {
    if (number == 0 || number == 1)
        return 1;
    else
        return number * factorial(number - 1);
}

    printf("Enter a positive integer: ");

    scanf("%d", &number);

    printf("The factorial of %d is : %d\n" ,number,factorial(number));

    return 0;
}