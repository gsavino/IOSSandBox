//
//  Product.swift
//  Bar
//
//  Created by iOS on 4/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import Foundation

class Product {
    var name: String
    var price: Double
    var quantity: Int
    init (name: String, price: Double){
        self.name = name
        self.price = price
        self.quantity = 0
    }
}
