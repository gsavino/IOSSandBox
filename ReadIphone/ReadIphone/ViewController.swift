//
//  ViewController.swift
//  ReadIphone
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var id: String
//    var price: Double
//    var title: String
//    var currency_id: String
//    var condition: String
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var conditionLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Readphone = PlistManager.readDictionary(name: "iphone")
        let phone = Phone(dictionary: Readphone)
        
        titleLbl.text = phone.title
        idLbl.text = phone.id
        currencyLbl.text = phone.currency_id
        priceLbl.text = "\(phone.price)"
        conditionLbl.text = phone.condition
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

