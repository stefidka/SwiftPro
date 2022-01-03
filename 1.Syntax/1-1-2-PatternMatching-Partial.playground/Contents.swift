import UIKit

let authentication = (name: "Stefka", password: "Password1", ipAddress: "127.0.0.1")

//partial matching with _
switch authentication {
case ("Stefka", "Password1", _):
    print("Hello, Stefka")
case ("Paul", "Password123", _):
    print("Hello, Paul")
default:
    print("Who are you?")
}

//Remember: Swift will take the first matching case it finds, so you need to ensure you look for the most specific things first.
switch authentication {
case (_, _, _):
    print("It could be anyone")
case ("Stefka", "Password1", _):
    print("Hello, Stefka")
case ("Paul", "Password123", _):
    print("Hello, Paul")
default:
    print("Who are you?")
}

//if you want to match only part of a tuple, but still want to know what the other part was, you should use let syntax.
switch authentication {
case ("Stefka", let password, _):
    print("Hello, Stefka, your password is \(password)")
case ("Paul", "Password123", _):
    print("Hello, Paul")
default:
    print("Who are you?")
}
