import UIKit

//Using the where keyword

// where clause can contain calculations:
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
for number in numbers where number % 2 == 1 {
    print(number)
}


let celebrities = ["Michael Jackson", "Taylor Swift", "Michael Caine", "Adele Adkins", "Michael Jordan"]
for name in celebrities where !name.hasPrefix("Michael") {
   print(name)
}

//where clause more complicated with operators such as &&:

for name in celebrities where name.hasPrefix("Michael") &&
name.count == 13 {
   print(name)
}

// use where to strip out optionals - not recommended becuase the value is still an optional
let celebritiesOptionals = ["Michael Jackson", nil, "Taylor Swift", "Michael Caine", "Adele Adkins", "Michael Jordan", nil]
for name in celebritiesOptionals where name != nil {
   print(name)
}

//Instead, use for case let to handle optionality, and use where to focus on filtering values.
for case let name? in celebritiesOptionals {
   print(name)
}
