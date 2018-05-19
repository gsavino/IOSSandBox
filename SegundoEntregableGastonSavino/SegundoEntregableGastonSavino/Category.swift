//
//  Category.swift
//  SegundoEntregableGastonSavino
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation
class Category {
    var name: String
    var books: [Book] = []
    init (name: String)
    {
        self.name = name
        books = []
    }
    init(dictionary: [String:AnyObject]) {
        self.name = dictionary["name"] as? String ?? "Other"
        if let d = dictionary["books"] as? [[String:AnyObject]] {
            for dic in d {
                let newBook = Book(dictionary: dic)
                books.append(newBook)
            }
        }
    }
    func addBook(book: Book) {
        books.append(book)
    }
}
