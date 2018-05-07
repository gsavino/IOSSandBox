//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let formatter = ISO8601DateFormatter()
var dateString = "2018-03-24T21:00:14Z"

var fNacVaca = formatter.date(from: dateString)
print(Date())

dateString = "2017-03-24T21:00:14Z"
var fNacOveja = formatter.date(from: dateString)

dateString = "2016-03-24T21:00:14Z"
var fNacPollo = formatter.date(from: dateString)

dateString = "2015-03-24T21:00:14Z"
var fNacCocodrilo = formatter.date(from: dateString)

var unaVaca = Vaca(patente: "V001", fechaNacimiento: fNacVaca! , produccion: 45)
var unaOveja = Oveja(patente: "V001", fechaNacimiento: fNacOveja! , produccion: 1500)
var unPollo = Pollo(patente: "V001", fechaNacimiento: fNacPollo! , produccion: 10)
var unCocodrilo = Cocodrilo(patente: "V001", fechaNacimiento: fNacCocodrilo! , produccion: 500)
var unTomaco = Tomaco(produccion: 300)

var elPastoreo : [Pastoreable] = []
elPastoreo.append(unaVaca)
elPastoreo.append(unaOveja)
elPastoreo.append(unPollo)

for animal in elPastoreo {
    animal.pastorear()
}






