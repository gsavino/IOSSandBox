//
//  BookStore.swift
//  SegundoEntregableGastonSavino
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class BookStore {
    var categories: [Category] = []
    func addCategory (category: Category){
        categories.append(category)
    }
}
