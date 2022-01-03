import UIKit

//Matching types

//Remember: Swift will take the first matching case it finds, and is returns true if an object is a specific type or one of its parent classes.
let view: AnyObject = UIButton()
switch view {
case is UIButton:
    print("Found a button")
case is UILabel:
    print("Found a label")
case is UISwitch:
    print("Found a switch")
case is UIView:
    print("Found a view")
default:
    print("Found something else")
}


//you can use this approach to loop over all subviews in an array and filter for labels:
for label in view.subviews where label is UILabel {
    print("Found a label with frame \(label.frame)")
}

//the code above doesn't make typecasting. if you wanted to access a label-specific property of label, such as its text property, you need to typecast it yourself


//using for case let instead is easier, as this filters and typecasts in one:
for case let label as UILabel in view.subviews {
    print("Found a label with text \(label.text)")
}
