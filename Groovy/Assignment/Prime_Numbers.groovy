package Assignment

//Write a method called isPrime that takes an integer argument and returns a boolean. 
//Determine whether the number is prime by dividing it by all numbers from 2 up to one less than the number.
//That limit is too high, of course. How high do you have to check to be sure whether you've gone far enough?

def isprime(int num) {
	int i=2
	for (i; i< num/2; i++) {
		
		if (num%2==0) {
			return false
		
		}else {
			
			return true
		}
	}
			
}

def x= isprime(5)
println "Is the entered number a prime number?\n" +x