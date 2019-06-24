//#-code-completion(module, hide, Swift)
//#-code-completion(identifier, hide, _setup())
//#-code-completion(identifier, hide, AbstractDrawable)
//#-code-completion(identifier, hide, _ColorLiteralType)
//#-hidden-code
_setup()
// 4. Create text
let text = Text(string: "Paradosso delle urne", fontSize: 32.0, fontName: "Futura", color: .red)
text.center.y += 10

// 5. Create an image
let image1 = Image(name: "Sacchetto3.png")
image1.size.width *= 0.5
image1.size.height *= 0.5
image1.center.y += -12
image1.center.x += 11

// 5. Create an image
let image2 = Image(name: "Sacchetto3.png")
image2.size.width *= 0.5
image2.size.height *= 0.5
image2.center.y += -12
image2.center.x -= 11

//#-end-hidden-code

/*:#localized(key: "FirstProseBlock") 
 */



/*:#localized(key: "SecondProseBlock")
 */
