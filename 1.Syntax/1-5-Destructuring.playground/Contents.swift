import UIKit

//Destructuring (also known as decomposition) is a smart way to transfer data into and out from tuples

let data = ("one", "two", "three")

//If you want to create three different constants out of those three values, without destructuring you’d need to write this:

let one = data.0
let two = data.1
let three = data.2

//With destructuring you can write this:
let (one1, two1, three1) = data
//Swift pulls the data tuple apart into those three individual constants, all in a single line of code.

func getPerson() -> (String, Int) {
   return ("Stefka Vacheva", 26)
}

let (name, age) = getPerson()
print("\(name) is \(age) years old")

//If you want to ignore values during destructuring, use _, like this:

let (_, age1) = getPerson()
print("That person is \(age1) years old")

//given two integers, A and B, how do you swap them without using a third variable?
//first approach

var a = 10
var b = 20
a = a + b
b = a - b
a = a - b
print(a)
print(b)

//In Swift, thanks to destructuring, you can write it in a single line:
(b, a) = (a, b)
print(a)
print(b)
