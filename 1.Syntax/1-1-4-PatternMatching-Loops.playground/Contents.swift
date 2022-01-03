import UIKit

//use let to bind a value to a local constant, or use _ to signal that you don’t care what a value is.

// we can use this same approach when working with loops

let stefka = (name: "Stefka", password: "Password1")
let paul = (name: "Paul", password: "Password123")
let will = (name: "will", password: "Password1")

let users = [stefka, paul, will]

// for in loop
for user in users {
   print(user.name)
}

//we can use case with a tuple to match specific values inside the tuples
for case ("Stefka", "Password1") in users {
   print("User Stefka has the password Password1")
}

//binding local constants to the values of each tuple
for case (let name, let password) in users {
   print("User \(name) has the password \(password)")
}

//it’s preferable to re-arrange the let to this:
for case let (name, password) in users {
   print("User \(name) has the password \(password)")
}

//combine these two approaches
for case let (name, "Password1") in users {
   print("User \(name) has the password \"Password1\"")
}
