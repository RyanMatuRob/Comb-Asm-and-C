#include <stdio.h>

// Declaration of the assembly function
extern int factorial(int n);

int main() {
    int number;
    printf("Enter a positive integer: ");
    scanf("%d", &number);

    int result = factorial(number);
    printf("Factorial of %d is %d\n", number, result);

    return 0;
}