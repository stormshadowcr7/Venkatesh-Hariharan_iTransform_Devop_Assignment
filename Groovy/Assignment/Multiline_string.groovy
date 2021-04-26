package Assignment

//Make a multi-line string. Compute the number of vowels on each line.

def string= """Hello everyone, 
			this is a multiline string,
			example for assignment""".trim()

def vow=["a","e","i","o","u"]
s=string.tokenize("\n")

def first=s[0]
def line1= first.findAll{ it -> it in vow }
println "Number of vowels in first line of the string is " +line1.size()

def second=s[1]
def line2= second.findAll{ it -> it in vow }
println "Number of vowels in second line of the string is " +line2.size()

def third=s[2]
def line3= third.findAll{ it -> it in vow }
println "Number of vowels in third line of the string is " +line3.size()

