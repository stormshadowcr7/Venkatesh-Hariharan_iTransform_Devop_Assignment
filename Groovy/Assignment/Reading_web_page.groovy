package Assignment

//Using the Groovy JDK, access your home page and display the source code. 
//Print the length of each line of the home page.


def urlcontents =  "https://www.google.com/".toURL().getText()
println urlcontents.eachLine { println it }
println urlcontents.eachLine { it -> println "The line has a size of " +it.size() }