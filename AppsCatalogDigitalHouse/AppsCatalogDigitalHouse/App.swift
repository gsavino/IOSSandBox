//
//  App.swift
//  AppsCatalogDigitalHouse
//
//  Created by iOS on 11/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import Foundation
class App {
    var name: String
    private var price: Double
    var category: AppCategory
    var developer: String
    var platform: Platform
    init?(name: String, price: Double, category: AppCategory, developer: String, platform: Platform)
    {
        if !App.isPriceValid(p: price) { return nil }
        
        self.name = name
        self.category = category
        self.developer = developer
        self.platform = platform
        self.price = price
        
    }
    func setPrice (p: Double)-> Bool {
        if App.isPriceValid(p: p) {
            price = p
            return true
        } else {
            return false
        }
    }
    func getPrice ()->Double{
        return price
    }
    
    static func isPriceValid(p: Double) -> Bool {
        return p >= 0 && p <= 20
    }
}
