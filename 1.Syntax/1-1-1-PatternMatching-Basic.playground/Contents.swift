import UIKit

//example 1
let name = "Stefka"
switch name {
case "Stefka":
    print("Hello, Stefka!")
case "Paul":
    print("Hello, Paul!")
default:
    print("Authentication failed")
}

//example 2 - evaluation as a tuple
let password = "Password1"
switch (name, password) {
case ("Stefka", "Password1"):
    print("Hello, Stefka!")
case ("Paul", "Password123"):
    print("Hello, Paul!")
default:
    print("Who are you?")
}

//example 3 - passing tuple
let authentication = (name: "Stefka", password: "Password1")
switch authentication {
case ("Stefka", "Password1"):
    print("Hello, Stefka!")
case ("Paul", "Password123"):
    print("Hello, Paul!")
default:
    print("Who are you?")
}
