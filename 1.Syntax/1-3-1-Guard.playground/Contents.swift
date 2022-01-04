import UIKit

// guard is used for early returns, which means you exit a function if some preconditions are not satisfied.

func giveAward(to name: String) {
    guard name == "Paul" else {
        print("No way!")
        return
    }
    print("Congratulations, \(name)!")
}
giveAward(to: "Paul")

//without "guard" this forces extra indents in the main body of your function code, something like this:

func giveAward1(to name: String) -> String {
    let message: String
    if name == "Paul" {
        message = "Congratulations, \(name)!"
    } else {
        message = "No way!"
    }
    return message
}
giveAward1(to: "Paul")


//when you use guard to check and unwrap an optional, that optional stays in scope.
func giveAward3(to name: String?) {
    guard let winner = name else {
        print("No one won the award")
        return
    }
    print("Congratulations, \(winner)!")
}

// guard lets you exit any scope if preconditions fail, not just functions and methods.
for i in 1...100 {
    guard i % 8 == 0 else { continue }
    print(i)
}
