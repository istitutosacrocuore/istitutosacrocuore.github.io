//#-code-completion(identifier, hide, setupLiveView())
//#-hidden-code
import Foundation
//#-end-hidden-code
show("What is your birthdate?")
let birthdate = askForDate("Birthdate")

// 2. Ask for a number
show("What is your favorite number?")
let number = askForNumber("Number")

// 3. Ask for a choice from a set of options
show("What is your favorite color?")
let color = askForChoice("Color", options: ["Blue", "Green", "Orange", "Purple", "Red", "Yellow"])

// 4. Display an image
//show(<#T##image: UIImage##UIImage#>)
