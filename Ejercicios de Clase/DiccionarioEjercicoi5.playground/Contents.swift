//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func separoPadron (padron: [[String:String]])->[String:[String]]
{
    var resultado:[String:[String]] = [:]
    resultado = ["nombre":[], "apellido":[]]
    for diccionario in padron {
        for (key, val) in diccionario {
            resultado[key]?.append(val)
        }
    }
    return resultado
}

var padron = [["nombre":"Lionel","apellido":"Messi"],["nombre":"Carlos","apellido":"Tevez"]]

print (separoPadron(padron:padron))
