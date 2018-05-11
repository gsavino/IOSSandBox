//
//  Player.swift
//  FootballClub
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import Foundation

class Player{
    var name: String
    var lastName: String
    var age: Int
    var height: Double
    var weight: Int
    var isStarter: Bool
    init (name: String, lastName:String, age:Int, height: Double, weight: Int, isStarter: Bool = false) {
        self.name = name
        self.lastName = lastName
        self.age = age
        self.height = height
        self.weight = weight
        self.isStarter = isStarter
    }
    func info()->String{
        return "\(name) \(lastName) (\(age))"
    }
}
