//
//  Phone.swift
//  ReadIphone
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class Phone {
    var id: String
    var price: Double
    var title: String
    var currency_id: String
    var condition: String
    init(id: String, price: Double, title: String, currency_id: String, condition: String){
        self.id = id
        self.price = price
        self.title = title
        self.currency_id = currency_id
        self.condition = condition
    }
    init (dictionary: [String: AnyObject]){
        self.id = dictionary["id"] as? String ?? "Not available"
        self.price = dictionary["price"] as? Double ?? -1.0
        self.title = dictionary["title"] as? String ?? "Title not defined"
        self.currency_id = dictionary["currency_id"] as? String ?? "Currency Not Defined"
        self.condition = dictionary["condition"] as? String ?? "Condition not defined"
    }
}
