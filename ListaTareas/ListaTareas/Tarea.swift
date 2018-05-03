//
//  Tarea.swift
//  ListaTareas
//
//  Created by Gaston on 03/05/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import Foundation

class Tarea {
    var titulo: String
    var descripcion: String
    var fechaCreacion: Date
    var completada: Bool
    
    init (titulo:String, descripcion:String){
        self.titulo = titulo
        self.descripcion = descripcion
        self.fechaCreacion = Date()
        self.completada = false
    }
    func setComplete(){
        completada = !completada
    }
}
