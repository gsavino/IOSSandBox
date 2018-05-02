//
//  Places.swift
//  Places
//
//  Created by iOS on 2/5/18.
//  Copyright © 2018 Gaston. All rights reserved.
//

import Foundation
import UIKit

class Place {
    var bandera: UIImage
    var pais: String
    var imagen: UIImage
    public init (pais: String, bandera: UIImage, imagen: UIImage){
        self.pais = pais
        self.bandera = bandera
        self.imagen = imagen
    }
}
