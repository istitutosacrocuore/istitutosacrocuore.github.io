//#-code-completion(identifier, hide, setupLiveView())
//#-hidden-code
import Foundation
//#-end-hidden-code
/*:
 **Obiettivo:** si scriva un programma che legga un valore intero
 e visualizzi il `valore intero` precedente e il successivo.`moveForward()`

 Un condannato a morte deve estrarre a caso due palline, con [reimbussolamento](glossary://re-inserting); se entrambe saranno bianche, avrà salva la vita!
 */
//#-editable-code Tap to enter code
var num: Int  /* numero inserito */
var prec: Int
var succ: Int  /* numero precedente e numero successivo */

/* LEGGI IL NUMERO */
show("Immetti il numero: ")
num = askForNumber()

/* CALCOLA IL NUMERO PRECEDENTE */
prec = num - 1 ;
/* CALCOLA IL NUMERO SUCCESSIVO */
succ = num  + 1 ;
/* STAMPA IL RISULTATO */

show("Il numero inserito é: " + String(num))
show("Il numero precedente a \(num) é: \(prec)")
show("Il numero successivo a "  + String(num) + " é: " + String(succ))

//#-end-editable-code


//: [Pagina successiva](@next)
