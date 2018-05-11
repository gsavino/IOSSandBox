//
//  Club.swift
//  FootballClub
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import Foundation
class Club {
    var name: String
    var country: String
    var isFavorite: Bool
    var goalKeepers: [Player]
    var defenders: [Player]
    var midFielders : [Player]
    var forwards: [Player]
    var favourite : Bool
    init (name:String, country:String, isFavorite: Bool = false) {
        self.name = name
        self.country = country
        self.isFavorite = isFavorite
        self.goalKeepers = []
        self.defenders = []
        self.midFielders = []
        self.forwards = []
        self.favourite = false
    }
}

