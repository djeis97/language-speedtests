// Prime.java by Charlton Trezevant
public class Prime { 

	public static void main(String[] args){
	
		// Find the largest prime factor of this number.
		// For this particular number, the prime factors are 71, 839, 1471, 6857.
		long prime = 600851475143l;
		// i needs to be scoped such that it can be accessed from anywhere in this method. 
		long i;
	
		// Find the lowest divisors of the prime in ascending order and continue until i is less than or equal to the 
		// prime (which is divided by these divisors, which are also prime, as they are found). 
	
		//Skip 0 and 1.
		for (i = 2; i <= prime; i++) {
	
		    // Find prime divisors of the prime. 
	            if (prime % i == 0) {
	
			// Divide the prime by the prime divisor, and decrease the divisor by 1 because the for loop is going to add 1 when we leave this if. 
			prime = prime/i;
	                i--;
	            }
	        }
		
		// Print out the factor.
		System.out.println(i);
		
	}

}
