import UIKit

let name: String? = "Stefka"
let password: String? = "Password1"

//matching optionals with  .some and .none to match “has a value” and “has no value”
switch (name, password) {
case let (.some(name), .some(password)):
   print("Hello, \(name), your password is \(password)")
case let (.some(name), .none):
   print("Hello, \(name), please enter a password.")
default:
   print("Who are you?")
}


switch (name, password) {
case let (.some(matchedName), .some(matchedPassword)):
   print("Hello, \(matchedName), your password is \(matchedPassword)")
case let (.some(matchedName), .none):
   print("Hello, \(matchedName), please enter a password.")
default:
   print("Who are you?")
}

//The second way Swift matches optionals is using "?"
switch (name, password) {
case let (username?, password?):
    print("Hello, \(username), your password is \(password)")
case let (username?, nil):
    print("Hello, \(username), please enter a password.")
default:
   print("Who are you?")
}

//matching optionals in for case let syntax
let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data {
   print(datum)
}
for case let datum? in data {
   print(datum)
}
