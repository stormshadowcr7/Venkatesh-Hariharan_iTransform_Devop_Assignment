package Assignment

//Create a class called Course, with a String attribute called name and an int attribute called days. 
//Create a list of four course instances, where at least two have the same number of days. 
//Sort the list by number of days. Then, sort the list by days, but when the days are equal, sort by name.


class Course {
	 String name 
	 int days
	 
	 def values(String n,int d) {
		 def name=n
		 def days=d
		 def ls=[name:n, days:d]
		 
	 }
	 static void main (args)
	 {
		 Course first = new Course()
		 Course second= new Course()
		 Course third = new Course()
		 Course fourth= new Course()
		 
		 
		 def f= [first.values("Storm", 13),second.values("Venkatesh",11 ),
			 third.values("Shadow", 17),fourth.values("Hariharan", 13)]
	 
		 def st=f.sort({a,b -> b["days"] <=> a["days"] ?: a["name"] <=>b["name"]})
		 st.forEach { println it }
		 }
}





