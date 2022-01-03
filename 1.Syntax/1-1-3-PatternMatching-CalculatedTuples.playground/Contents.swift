import UIKit


//Tuples are most frequently created using static values, like this:
let name = ("Stefka", "Vacheva")

//But tuples are like any other data structure in that they can be created using dynamic code.

func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}

print(fizzbuzz(number: 15))
print(fizzbuzz(number: 14))
print(fizzbuzz(number: 3))
print(fizzbuzz(number: 5))
