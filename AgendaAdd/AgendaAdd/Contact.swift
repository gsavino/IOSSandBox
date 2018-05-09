//
//  Contact.swift
//  AgendaAdd
//
//  Created by Gaston savino on 08/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//
import Foundation

enum  Gender {
    case male
    case female
}

class Contact {
    var name: String
    var lastName: String
    var phone: Int
    var gender: Gender
    var email: String?
    init (name: String, lastName:String, phone: Int, gender:Gender, email: String?){
        self.name = name
        self.lastName = lastName
        self.phone = phone
        self.gender = gender
        self.email = email
    }
}
