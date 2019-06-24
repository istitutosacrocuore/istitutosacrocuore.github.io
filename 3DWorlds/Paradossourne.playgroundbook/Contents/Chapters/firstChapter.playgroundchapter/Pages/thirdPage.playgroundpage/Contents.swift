//#-code-completion(module, hide, Swift)
//#-code-completion(identifier, hide, _setup())
//#-code-completion(identifier, hide, AbstractDrawable)
//#-code-completion(identifier, hide, _ColorLiteralType)
//#-hidden-code
_setup()
import GameplayKit
// 5. Create an image
let image1 = Image(name: "Sacchetto3.png")
image1.size.width *= 0.5
image1.size.height *= 0.5
image1.center.y += 11
image1.center.x += 11

// 5. Create an image
let image2 = Image(name: "Sacchetto3.png")
image2.size.width *= 0.5
image2.size.height *= 0.5
image2.center.y += 11
image2.center.x -= 11

var probStr1 = 0.0
var probStr2 = 0.0
let random = GKRandomDistribution(lowestValue: 0, highestValue: 100)


//#-end-hidden-code

/*:#localized(key: "FirstProseBlock") 
 */


//#-editable-code Tap to enter code






//#-end-editable-code
//#-hidden-code


let text1 = Text(string: "Probability with the first strategy \(probStr1)", fontSize: 24.0, fontName: "Futura", color: .red)
text1.center.y -= 10

let text2 = Text(string: "Probability with the second strategy \(probStr2)", fontSize: 24.0, fontName: "Futura", color: .red)
text2.center.y -= 15

//#-end-hidden-code


/*:#localized(key: "SecondProseBlock")
 */
