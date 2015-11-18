#include <stdio.h>

// Computes the largest prime factor of a given number.
unsigned long prime = 600851475143L;
unsigned long i = 0L;

int main(void) {
  for (i = 2; i <= prime; i++) {
    if (prime % i == 0) {
      prime = prime/i;
      i--;
    }
  }

printf("%lu \n",i);
}
