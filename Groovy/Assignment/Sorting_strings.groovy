package Assignment

//Create a list of strings. Sort them alphabetically. Sort them by length. Sort them by length in descending order.

//Sorting alphabetically
def lst= ["Hello", "World", "Of", "Groovy", "Programming" ]
 def alpha= lst.sort()
println "Alphabetically sorted array would be:\n "+alpha
println "-----------------------------------------------"

//Sorting by length
def ln= lst.sort {it.size()}
println "Array sorted according to length would be:\n" +ln
println "-----------------------------------------------"

//Sorting in descending order of length
def dln= lst.sort {-it.size()}
println "Array sorted according to descending order of length would be:\n" +dln
println "-----------------------------------------------"


