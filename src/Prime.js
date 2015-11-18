
// Computes the largest prime factor of a given number. 
var prime = 600851475143;
var i = 2;

for (i = 2; i <= prime; i++) {
	if (prime % i == 0) {
		prime = prime / i;
                i--;
	}
}

console.log(i);
