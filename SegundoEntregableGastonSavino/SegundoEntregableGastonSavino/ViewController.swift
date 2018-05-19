//
//  ViewController.swift
//  SegundoEntregableGastonSavino
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bookStore = BookStore()

    override func viewDidLoad() {
        super.viewDidLoad()
         let categories = PlistManager.readArray(name: "libros")
            for dicCategory in categories {
                let newCategory = Category(dictionary: dicCategory)
                bookStore.addCategory(category: newCategory)
            }
    // Do any additional setup after loading the view, typically from a nib.
        print("freno")
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

