//
//  Combo.swift
//  TestNavigationBurgerKing
//
//  Created by Andres Ciaño on 4/17/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class Combo {

    private var burger: String = ""
    private var fries: String = ""
    private var drink: String = ""
    
    private var burgerPrice: Double = 0
    private var friesPrice: Double = 0
    private var drinkPrice: Double = 0
    
    public func addBurger(name: String, price: Double) {
        burger = name
        burgerPrice = price
    }
    
    public func addFries(name: String, price: Double) {
        fries = name
        friesPrice = price
    }
    
    public func addDrink(name: String, price: Double) {
        drink = name
        drinkPrice = price
    }
    
    public func getTotalPrice() -> String {
        let total = burgerPrice + friesPrice + drinkPrice
        return "\(Int(total))"
    }
    
    public func getBurgerTitle() -> String {
        return burger
    }
    
    public func getFriesTitle() -> String {
        return fries
    }
    
    public func getDrinkTitle() -> String {
        return drink
    }
    
    public func getBurgerPrice() -> String {
        return "\(Int(burgerPrice))"
    }
    
    public func getFriesPrice() -> String {
        return "\(Int(friesPrice))"
    }
    
    public func getDrinkPrice() -> String {
        return "\(Int(drinkPrice))"
    }
    
    
    
}
