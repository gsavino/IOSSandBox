//
//  Book.swift
//  SegundoEntregableGastonSavino
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation
class Book {
    var title: String
    var author: String
    var isbn: String
    var stock: Int
    var price: Double
    var language: String
    init (title: String, author: String, isbn: String, stock: Int, price: Double, language: String){
        self.title = title
        self.author = author
        self.isbn = isbn
        self.stock = stock
        self.price = price
        self.language = language
    }
    init(dictionary: [String:AnyObject]){
        self.title = dictionary["title"] as? String ?? "Title not available"
        self.author = dictionary["author"] as? String ?? "Author not available"
        self.isbn = dictionary["isbn"] as? String ?? "ISBN not available"
        self.stock = dictionary["stock"] as? Int ?? 0
        self.price = dictionary["price"] as? Double ?? 0.0
        self.language = dictionary["language"] as? String ?? "Language indefined"
    }
}
