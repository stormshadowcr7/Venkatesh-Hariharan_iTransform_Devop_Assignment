package Assignment

//a. How many characters are in the string "Hello, Groovy!"?

def s= "Hello, Groovy!"
println "Length of the string in variable s is: "+ s.length()
println "-----------------------------------------------"

//b. Print a hello statement with your name using string concatenation and using groovy string.
def name= "Venkatesh"
println "Output using concatenation method is: "
println "Hello, " .concat(name)
println "-----------------------------------------------"

//using groovy string
println "Output using concatenation string is: "
println "Hello, " + name
println "-----------------------------------------------"

//c. Demonstrate that "racecar" is a palindrome by comparing it to its reverse. 

def a= "racecar"
def b= a.reverse()
println "Output for racecar is:"
if (a == b) {
	println "Its a palindrome"
}else {
	println "Not a palindrome"
}
println "-----------------------------------------------"

//Do the same with "Bob", removing case sensitivity first

def x= "Bob"
x= x.toLowerCase()
def y = x.reverse()
println "Output for Bob is:"
if (x==y) {
	println" Its a palindrome"
}else {
	println "Not a palindrome"
}
println "-----------------------------------------------"

//d. Define a string variable containing the sentence, "Hello, World. How are you?". Split the sentence into an array using the split method. Count the number of words. 

String text="Hello, World. How are you?"
println "Counting number of elements"
def array= text.split() 
def count= 0
for (i in array){
	count +=1
} 
println "Number of elements in the array is: " +count
println "-----------------------------------------------"

//Do the same using the tokenize method.
def op = text.tokenize()
def ct= 0
for (j in op){
	ct +=1
}
println "Number of words using tokenizer is: " + ct
println "-----------------------------------------------"

//e. Use array notation (square brackets) to print the substring "World"

println "Printing world from array: " +array[1]
println "-----------------------------------------------"
//f.. Use array notation to print the last word, but reversed.

def r= array[-1]
println ("Reverse of last word in the array is: "+ r.reverse())
println "-----------------------------------------------"

























