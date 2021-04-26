package Assignment

//Print the numbers from 0 to 15 in binary (use Java's Integer.toBinaryString() method). 
//Use a method in String from the Groovy JDK to make all the output values have four digits.
println "Binary form of numbers from 0 to 15 is:"
for (def i in 0..15) {
	
	println String.format("%4s", Integer.toBinaryString(i)).replace(" ", "0")
	i++
}