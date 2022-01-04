import UIKit

//lazy properties
class Singer {
    let name: String
    init(name: String) {
        self.name = name
    }
    lazy var reversedName = {
        return "\(self.name.uppercased()) backwards is \(String(self.name.uppercased().reversed()))!"}()
}
let taylor = Singer(name: "Taylor Swift")
print(taylor.reversedName)


//the property is now lazy, which means the code inside the closure will be executed only the first time we read the reversedName property.
