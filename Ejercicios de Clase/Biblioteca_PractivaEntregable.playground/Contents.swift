//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var elAleph = Libro(titulo: "El Aleph", ISBN: 7463, autor:"Borges")
var milNueveOchentayCuatro = Libro(titulo: "1984",  ISBN: 1234,autor: "Wells")
var BFG = Libro(titulo: "BFG", ISBN: 948,  autor: "Rohal Dall")

var unSocio = SocioComun(nombre: "Juan", apellido: "Perez", ID: 43827)
var unaSocia = SocioComun(nombre: "Maria", apellido: "Rodriguez", ID: 87438)
var vitalicio = SocioVIP(nombre: "Carlos", apellido: "Gardel", ID: 934, cuotaMensual: 1500.32)

var ejDelAleph = Ejemplar(publicacion: elAleph, nroEdicion: 1, ubicacion: "EF1C4", identificacion: 1999)

var ejmilNueveOchentayCuatro = Ejemplar(publicacion: milNueveOchentayCuatro, nroEdicion: 1, ubicacion: "EF8C9", identificacion: 2008)

var ejBFG = Ejemplar(publicacion: BFG, nroEdicion: 3, ubicacion: "EF1C3", identificacion: 1978)

elAleph.addEjemplar(ejemplar: ejDelAleph)
milNueveOchentayCuatro.addEjemplar(ejemplar: ejmilNueveOchentayCuatro)
BFG.addEjemplar(ejemplar: ejBFG)








