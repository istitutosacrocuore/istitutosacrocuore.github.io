//#-hidden-code
//
//  main.swift
//  
//  Copyright © 2016-2019 Apple Inc. All rights reserved.
//
//#-end-hidden-code
//#-code-completion(identifier, hide, setupLiveView())
//#-hidden-code
import Foundation
//#-end-hidden-code
//#-editable-code Tap to enter code
var a : Float
var b : Float
var c : Float

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
        show("Soluzioni coincidenti: x1 = x2 = \(x1)")
    }
    else {
        var x1 = (-b - sqrt(delta)) / (2 * a)
        var x2 = (-b + sqrt(delta)) / (2 * a)
        
        show("x1 = \(x1)")
        sleep(1)
        show("x2 = \(x2)")
        sleep(1)
    }
}

show("🤖 Risolutore di equazioni di II grado 🤖")
sleep(1)
show("ax\u{000B2} + bx + c = 0 (in forma normale)")
show("dove a, b, c, sono i coefficienti e x è l'incognita.")
show("Le equazioni di secondo grado hanno due soluzioni")
show("Inserite i valori numerici dei coefficienti a, b, c")
show("ℹ️ Se un coefficiente è nullo, bisogna inserire il numero 0 ")

a = Float(askForDecimal("Coefficiente a:"))
b = Float(askForDecimal("Coefficiente b:"))
c = Float(askForDecimal("Coefficiente c:"))

if a != 0 && b != 0 && c != 0{
    show("Hai inserito la seguente equazione:")
    sleep(1)
    show("\(a) x\u{000B2} + \(b) x + \(c) = 0")
    risolviSecondoGradoCompleta(a: a, b: b, c: c)
}
    
    
else if a == 0 && b != 0 && c != 0 {
    show("Hai inserito la seguente equazione:")
    sleep(1)
    show("\(b) x + \(c) = 0")
    risolviPrimoGrado(b: b, c: c)
}
    
else if a == 0 && b == 0 && c == 0 {
    show("Hai ottenuto la seguente identità:")
    sleep(1)
    show("0 = 0")
}

//#-end-editable-code
