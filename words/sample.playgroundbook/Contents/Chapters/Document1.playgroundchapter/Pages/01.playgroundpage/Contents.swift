/*:#localized(key: "FirstProseBlock")
 */
//#-hidden-code
import PlaygroundSupport
import UIKit
///DECLARACIÓN DE OBJETOS DE LA VISTA
let vista = UIView()
let marcoImagen = UILabel()
let etiquetaNombre = UIImageView()
let labelNombre = UILabel()
//#-end-hidden-code
/*:#localized(key: "DosProseBlock")
 */

let verticalDosNegra = UILabel(frame: CGRect(x: /*#-editable-code*/215/*#-end-editable-code*/, y: /*#-editable-code*/15/*#-end-editable-code*/, width: /*#-editable-code*/10/*#-end-editable-code*/, height: /*#-editable-code*/435/*#-end-editable-code*/))

let horizontalDosNegra = UILabel(frame: CGRect(x: /*#-editable-code*/15/*#-end-editable-code*/, y: /*#-editable-code*/235/*#-end-editable-code*/, width: /*#-editable-code*/404/*#-end-editable-code*/, height: /*#-editable-code*/10/*#-end-editable-code*/))

/*:#localized(key: "TresProseBlock")
 */

//#-editable-code

//#-end-editable-code

//#-hidden-code
///PROPIEDADES DE LOS OBJETOS
vista.backgroundColor = .white

//#-end-hidden-code
/*:#localized(key: "FourProseBlock")
 */

verticalDosNegra.backgroundColor = /*#-editable-code*/#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)/*#-end-editable-code*/
horizontalDosNegra.backgroundColor = /*#-editable-code*/#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)/*#-end-editable-code*/

/*:#localized(key: "CincoProseBlock")
 */

//#-editable-code

//#-end-editable-code

//#-hidden-code
marcoImagen.frame = CGRect(x: 10, y: 10, width: 250, height: 50)
marcoImagen.layer.borderWidth = 10
marcoImagen.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
marcoImagen.backgroundColor = .white

etiquetaNombre.frame = CGRect(x: 10, y: 465, width: 415, height: 100)
etiquetaNombre.image = #imageLiteral(resourceName: "IMG_5717.PNG")

labelNombre.frame = CGRect(x: 15, y: 470, width: 400, height: 80)
//#-end-hidden-code
/*:#localized(key: "SeisProseBlock")
 */

labelNombre.text = /*#-editable-code*/"Jiusseppe Carligiano"/*#-end-editable-code*/
labelNombre.textColor = /*#-editable-code*/#colorLiteral(red: 0.176470592617989, green: 0.0117647061124444, blue: 0.560784339904785, alpha: 1.0)/*#-end-editable-code*/

//#-hidden-code
labelNombre.textAlignment = .center
labelNombre.font = UIFont(name: "Futura-CondensedExtraBold", size: 35)
vista.addSubview(etiquetaNombre)
vista.addSubview(marcoImagen)
vista.addSubview(labelNombre)
//#-end-hidden-code

/*:#localized(key: "SieteProseBlock")
 */

vista.addSubview(verticalDosNegra)
vista.addSubview(horizontalDosNegra)

/*:#localized(key: "OchoProseBlock")
 */

//#-editable-code

//#-end-editable-code

//#-hidden-code
marcoImagen.translatesAutoresizingMaskIntoConstraints = false
let cosas = ["marcoImagen": marcoImagen]
vista.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-5-[marcoImagen]-5-|", options: [], metrics: nil, views: cosas))
vista.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[marcoImagen(450)]", options: [], metrics: nil, views: cosas))



PlaygroundPage.current.liveView = vista
//#-end-hidden-code

