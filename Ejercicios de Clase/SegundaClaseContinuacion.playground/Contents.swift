//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print ("-----Ejercicio 16 imprimir impares positivos de los primeros 100 impares")
func imprimirImparesPositivos()
{
    var count=0
    var impares = 0
    while impares<100
    {
        if count%2 == 1
        {
            print(count)
            impares = impares + 1
        }
        count = count + 1
    }
}
imprimirImparesPositivos()
print ("---------Ejercicio 17 tirar un Dado")

func tirarUnDado()->Int
{
    var numero=0
    numero = Int(arc4random_uniform(7))
    return numero
}
print(tirarUnDado)
print("---------Ejercicio 18 dado de 12 caras")





