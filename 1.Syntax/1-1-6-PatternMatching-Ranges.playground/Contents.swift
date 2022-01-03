import UIKit

let age = 36

//matching ranges
switch age {
case 0 ..< 18:
    print("You have the energy and time, but not the money")
case 18 ..< 70:
    print("You have the energy and money, but not the time")
default:
    print("You have the time and money, but not the energy")
}

//we could rewrite that code using "if case"
if case 0 ..< 18 = age {
    print("You have the energy and time, but not the money")
} else if case 18 ..< 70 = age {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

//A much nicer approach is to use the pattern match operator, ~=
if 0 ..< 18 ~= age {
    print("You have the energy and time, but not the money")
} else if 18 ..< 70 ~= age {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

//An even cleaner solution is to use contains()
if (0 ..< 18).contains(age) {
   print("You have the energy and time, but not the money")
} else if (18 ..< 70).contains(age) {
   print("You have the energy and money, but not the time")
} else {
   print("You have the time and money, but not the energy")
}

//You can combine this range matching into our existing tuple matching code, like this:
let user = (name: "Stefka", password: "Password1", age: 36)
switch user {
case let (name, _, 0 ..< 18):
   print("\(name) has the energy and time, but no money")
case let (name, _, 18 ..< 70):
   print("\(name) has the money and energy, but no time")
case let (name, _, _):
   print("\(name) has the time and money, but no energy")
}
