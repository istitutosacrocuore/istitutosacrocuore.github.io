//#-hidden-code
//
//  main.swift
//  
//  Copyright © 2016-2019 Domenico Caggiano
//

import Foundation

func risolviPrimoGrado(b: Float, c: Float) {
    var x = -1*(c/b)
    sleep(1)
    show("x = \(x)")
}

func calcoloDelta(a: Float, b:Float, c:Float) -> Float {
    return (powf(b, 2) - (4 * a * c))
}

func risolviSecondoGradoCompleta(a: Float, b:Float, c:Float) {
    show("Risolvo equazione di II grado COMPLETA...")
    sleep(1)
    var delta = calcoloDelta(a: a, b: b, c: c)
    if delta < 0 {
        show("⚠️ Equazione impossibile")
    }
    else if delta == 0 {
        var x1 = (-b - sqrt(delta)) / (2 * a)
        show("Soluzioni coincidenti: x\u{2081} = x\u{2082} = \(x1)")
    }
    else {
        var x1 = (-b - sqrt(delta)) / (2 * a)
        var x2 = (-b + sqrt(delta)) / (2 * a)
        show("x\u{2081} = \(x1)")
        sleep(1)
        show("x\u{2082} = \(x2)")
        sleep(1)
    }
}

func risolviSecondoGradoSpuria(a: Float, b:Float) {
    show("Risolvo equazione di II grado SPURIA...")
    sleep(1)
    var x1 = 0
    var x2 =  -b / a
    show("x\u{2081} = \(x1)")
    sleep(1)
    show("x\u{2082} = \(x2)")
    sleep(1)
}

func risolviSecondoGradoPura(a: Float, c:Float) {
    show("Risolvo equazione di II grado PURA...")
    sleep(1)
    if a.sign.rawValue == c.sign.rawValue {
        show("⚠️ L'equazione non ammette soluzioni reali (impossibile)")
    }
    else {
        var x1 = -sqrt((-c)/a)
        var x2 =  -x1
        show("x\u{2081} = \(x1)")
        sleep(1)
        show("x\u{2082} = \(x2)")
        sleep(1)
    }
}

func risolviEquazioni() {
    var a = Float(askForDecimal("Inserisci un valore per il coefficiente a:"))
    var b = Float(askForDecimal("Inserisci un valore per il coefficiente b:"))
    var c = Float(askForDecimal("Inserisci un valore per il coefficiente c:"))
    
    if a != 0 && b != 0 && c != 0{
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(a) x\u{000B2} + \(b) x + \(c) = 0 ")
        risolviSecondoGradoCompleta(a: a, b: b, c: c)
    }
    else if a != 0 && b == 0 && c != 0 {
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(a) x\u{000B2} + \(c) = 0 ")
        risolviSecondoGradoPura(a: a, c: c)
    }
    else if a != 0 && b != 0 && c == 0 {
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(a) x\u{000B2} + \(b) x = 0 ")
        risolviSecondoGradoSpuria(a: a, b: b)
    }
    else if a != 0 && b == 0 && c == 0 {
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(a) x\u{000B2} = 0 ")
        show("Risolvo equazione MONOMIA...")
        sleep(1)
        show("x\u{2081} = x\u{2082} = 0")
    }
    else if a == 0 && b != 0 && c != 0 {
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(b) x + \(c) = 0 ")
        risolviPrimoGrado(b: b, c: c)
    }
    else if a == 0 && b !=  0 && c == 0 {
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(b) x = 0 ")
        show("Risolvo...")
        show("x = 0")
    }
    else if a == 0 && b == 0 && c == 0 {
        show("Hai ottenuto la seguente identità (eq. indeterminata):")
        sleep(1)
        show("0 = 0 ")
    }
    else if a == 0 && b == 0 && c != 0 {
        show("Hai inserito la seguente equazione:")
        sleep(1)
        show("\(c) = 0 ")
        show("Risolvo...")
        show("⚠️Equazione impossibile")
    }
    show("Ancora un'altra equazione?")
    var loop = askForChoice(options: ["Si 🔄", "Termina ❌"])
    switch loop {
    case "Si 🔄":
        risolviEquazioni()
    default: break
    }
}

//#-end-hidden-code

//#-editable-code Tap to enter code
show("🤖 Risolutore di equazioni di II grado 🤖")
sleep(1)
show("ax\u{00B2} + bx + c = 0 (in forma normale)")
show("dove a, b, c, sono i coefficienti e x è l'incognita.")
sleep(1)
show("Inserite i valori numerici dei coefficienti a, b, c")
show("ℹ️ Se un coefficiente è nullo, bisogna inserire il numero 0 ")

risolviEquazioni()
//#-end-editable-code
