//#-code-completion(identifier, hide, setupLiveView())
//#-hidden-code
import Foundation
//#-end-hidden-code
/*:
 **Obiettivo:** si scriva un programma che, dato un numero reale *D* immesso da tastiera, calcoli e stampi:
 1. l’area del quadrato di lato *D*
 2. l’area del cerchio di diametro *D*
 3. l’area del triangolo equilatero di lato *D*
 
 ![The real head of the household?](areaTriangolo.png)
 */
/*:
 - - -
 * Callout(💡 Suggerimento):
 Per calcolare l’area occorre la misura dell’altezza CH che divide il triangolo equilatero in due triangoli rettangoli uguali: CHB e CHA.
 Sapendo che il cateto HB è la metà del lato CB, troviamo la lunghezza dell’altezza CH con il teorema di Pitagora (chiamiamo CB=AB=AC=lato):
 - - -
 
 ![The real head of the household?](areaTriangolo1.png)
 ![The real head of the household?](areaTriangolo2.png)
 ![The real head of the household?](areaTriangolo3.png)
 ![The real head of the household?](areaTriangolo4.png)
 ![The real head of the household?](areaTriangolo5.png)
 */

//#-editable-code
/* numero inserito */
var d: Float
//area quadrato, cerchio, triangolo
var aq, ac, at: Float
var r: Float
/* costante pari a radice(3)/4 */
let rad3_4: Float


rad3_4 = sqrt(3) / 4

/* STAMPA COSA ESEGUIRA’ IL PROGRAMMA */
show("Calcolo di aree")
/* LEGGI IL NUMERO */
show("Immetti il valore di D:")
/* CALCOLA L’AREA DEL QUADRATO DI LATO D */
d = Float(askForNumber())
//aq = d * d ;
/* soluzione alternativa per il calcolo dell’area del quadrato utilizzando
 la funzione pow(base, esponente) definita in math.h*/
aq = pow(d, 2)

/* CALCOLA L’AREA DEL CERCHIO DI DIAMETRO D */ /* calcola il raggio del cerchio */
r = d/2 ;
/* calcola l’area del cerchio */
ac = Float(M_PI) * pow(r, 2)
/* nota: il valore di PI greco e’ definito in math.h come M_PI */
/* soluzione alternativa per il calcolo dell’area del cerchio
 ac = M_PI * pow(r, 2) ;
 */
/* CALCOLA L’AREA DEL TRIANGOLO EQUILATERO DI LATO D */
//at = rad3_4 * ( d * d ) ;
/* soluzione alternativa per il calcolo dell’area del triangolo equilatero*/
at = rad3_4 * pow(d, 2)

/* STAMPA IL RISULTATO */

show("Le aree calcolate sono:")
sleep(1)
show("Area del quadrato di lato \(d) = \(aq):")
sleep(1)
show("Area del cerchio di diametro \(d) = \(ac):")
sleep(1)

show("Area del triangolo equilatero di lato \(d) = \(at):")

let Pi = Double.pi
let E = M_E

show("\(abs(-4))")
show("\(min(6,8,8,9))")
show("Pi: \(Double.pi)")
show("\(ceil(Pi))")
show("\(floor(Pi))")
show("\(trunc(Pi))")
show("\(E)")
//#-end-editable-code
/*:
* Experiment:
Per approndimenti sulle funzioni matematiche in Swift [clicca qui](https://www.ict.social/swift/basics/mathematical-functions-in-swift)

[Pagina successiva](@next)

 */

//: [Pagina successiva](@next)
