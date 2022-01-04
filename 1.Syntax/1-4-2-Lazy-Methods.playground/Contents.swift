import UIKit

//A common complaint people have when using lazy is that it clutters up their code: rather than having a neat separation of properties and methods, lazy properties become a gray area where properties and functionality mix together. There is a simple solution to this: create methods to separate your lazy properties from the code they rely on.

class Singer {
    
    let name: String
    lazy var reversedName = self.getReversedName()
    
    init(name: String) {
        self.name = name
    }
    
    private func getReversedName() -> String {
        return "\(name.uppercased()) backwards is \(String(name.uppercased().reversed()))!"
    }
}
let taylor = Singer(name: "Taylor Swift")
print(taylor.reversedName)
