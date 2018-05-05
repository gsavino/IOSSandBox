//: Playground - noun: a place where people can play

import UIKit

print([1,2,3])


var str = "Hello, playground"

func digitosDecimales(numInput: Double)->[Int]
{
    var resultado: [Int] = []
    var tempD: Double
    var tempI: Int
    tempI = Int(numInput)
    tempD = numInput - Double(tempI)
    while tempD != 0
    {
        tempD = tempD * 10
        tempI=Int(tempD)
        resultado.append(tempI)
        tempD = tempD - Double(tempI)
    }
    return resultado
}
print (digitosDecimales(numInput: 45.123456))

func rotarArray(arrayIn: [Int], rotar: Int)->[Int]{
    var arrayTmp = arrayIn
    for i in 0...rotar{
        var digitoInt: Int
        digitoInt = arrayTmp[0]
        for j in 1..<arrayIn.count {
            arrayTmp[j-1] = arrayTmp[j]
        }
        arrayTmp[arrayTmp.count] = digitoInt
    }
    return arrayTmp
}


func encontrarCiclo(arrayIn: [Int])->Bool{
    var arrayTmp:[Int] = []
    for ele in arrayIn {
        if arrayTmp.contains(ele) {
            return true
        }
        else {
            arrayTmp.append(ele)
        }
    }
    return false
}
