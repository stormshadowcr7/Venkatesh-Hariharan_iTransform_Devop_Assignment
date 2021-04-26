package Assignment

//Create a list of numbers. Add them together. First double each number, then add them up. Compute their average.

//Doubling each element of the list
def list1= [10,15,12,14,5]
for (int i=0; i< list1.size(); ++i) {
	list1[i]= list1[i]*2;
}
println "The double of this list would be: " + list1

//Sum of doubled elements in the list

def sum= list1.sum()
println "Sum of contents of list lst is "+sum

//Average of elements in the list
def count= list1.size()
def avg= sum/count
println "Average of the elements of list is: " +avg
