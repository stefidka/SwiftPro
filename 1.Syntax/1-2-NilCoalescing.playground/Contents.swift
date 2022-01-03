import UIKit

//the nil coalescing operator, ??, which allows you to access an optional and provide a default value if the optional is nil.

let name: String? = "Stefka"
let unwrappedName = name ?? "Anonymous"
print(unwrappedName)


//combine it with the try? keyword.
let savedText: String
do {
    savedText = try String(contentsOfFile: "saved.txt")
} catch {
    print("Failed to load saved text.")
    savedText = "Hello, world!"
}
print(savedText)


//Remember, try has three variants:
//1. try attempts some code and might throw an exception (used with do and catch keywords
//2. try! attempts some code and crashes your app if it fails
//3. try? attempts some code and returns nil if the call failed.

//simple example of the code above using try? and ??
let text = (try? String(contentsOfFile: "saved.txt")) ?? "Hello, world!"
print(text)

//That means “try loading the file, but if loading fails use this default text instead” – a neater solution and much more readable.
