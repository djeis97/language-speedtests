#Language-SpeedTests


##What is this? 
I decided to run a quick test to determine the performance of several popular programming languages by measuring the execution time of an algorithm to compute the greatest prime factor of a number.

The test itself was easy enough to set up and run, being no more than an implementation of a simple algorithm in several languages combined with a bash script to run them all in sequence. 

##Setup
For any language you don't have the interpreter/compiler installed for, you'll want to either install that or skip the checks for that language by removing the corresponding test from runTests.sh.

The two bits that need to be compiled are Prime.c and Prime.java. After compilation, move the binaries to bin/, then run the tests.

I encourage you to run your own tests and to share the results!
