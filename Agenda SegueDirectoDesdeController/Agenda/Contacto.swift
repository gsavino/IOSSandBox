//
//  Contacto.swift
//  Agenda
//
//  Created by iOS on 25/4/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import Foundation

public class Contacto{
    var nombre : String
    var apellido : String
    var fechaNacimiento: String
    var direccion : String
    var telefono : String
    var email : String
    public init(nombre: String, apellido: String, fechaNacimiento:String, direccion: String, telefono: String, email: String){
        self.nombre = nombre
        self.apellido = apellido
        self.fechaNacimiento = fechaNacimiento
        self.direccion = direccion
        self.telefono = telefono
        self.email = email
    }
}
