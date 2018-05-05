//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var unApostador = Apostador()
var otroApostador = Apostador()
var apostadorQuini = Apostador()
var corredorApuestas = CorredorApuestas()
var cronicatv = KroniKaTV()

var notificador = NotificadorJuego()

var carreraMatinal = Carrera()
var quini5 = Quini5()

carreraMatinal.addInteresado(interesado: unApostador)
carreraMatinal.addInteresado(interesado: otroApostador)
carreraMatinal.addInteresado(interesado: corredorApuestas)
carreraMatinal.addInteresado(interesado: cronicatv)

quini5.addInteresado(interesado: apostadorQuini)
quini5.addInteresado(interesado: corredorApuestas)
quini5.addInteresado(interesado: otroApostador)

carreraMatinal.cargarResultado(nroCaballo: 17)
carreraMatinal.cargarResultado(nroCaballo: 22)
carreraMatinal.cargarResultado(nroCaballo: 5)
carreraMatinal.cargarResultado(nroCaballo: 8)
carreraMatinal.cargarResultado(nroCaballo: 2)
carreraMatinal.finalizarCarrera()

quini5.cargarResultado(nro: 21)
quini5.cargarResultado(nro: 8)
quini5.cargarResultado(nro: 10)
quini5.cargarResultado(nro: 13)
quini5.cargarResultado(nro: 27)

quini5.finalizarSorteo()




