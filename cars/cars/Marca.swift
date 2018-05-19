//
//  Marca.swift
//  cars
//
//  Created by Gaston savino on 18/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class Marca {
    var name: String
    var autos: [Automovil]
    init(name: String, autos:[Automovil]=[]){
        self.name = name
        self.autos = autos
    }
}
