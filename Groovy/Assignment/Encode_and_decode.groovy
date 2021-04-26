package Assignment

//a. Create two strings, one for a username and one for a password. 
//Concatenate them together, separated by a colon. Use a method from the Groovy 
//JDK to convert the resulting String to a byte array.
//Then use the encodeBase64 method on byte array to create an encoded string.

def encoding()
{
String uname = "Venkatesh"
String pwd= "123456789"

//concatenate username and password
def cat = uname.concat(":" + pwd)

println "Concatenated string is " +cat

//converting string to byte array
def arr = cat.getBytes()
println "Array of string in byte format is " +arr

//Encoding byte array to encoded string using encodebase64
encode = arr.encodeBase64()
println "Encoded version of the byte array is "+encode

return encode
}

//b. Decode the string by using the decodeBase64 method, and using the result as an argument to the String constructor.
//Use the split method to return the original username and password.

def decoding()
{
	def prev=encoding().toString()
	decode = prev.decodeBase64()
	String S = new String(decode)
	println "Decoded byte array is "+ S.split(";")
	
}
decoding()
