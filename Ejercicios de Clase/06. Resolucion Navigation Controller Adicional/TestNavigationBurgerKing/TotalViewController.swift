//
//  TotalViewController.swift
//  TestNavigationBurgerKing
//
//  Created by Andres Ciaño on 4/17/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class TotalViewController: UIViewController {

    var currentCombo: Combo?
    
    
    @IBOutlet weak var burgerTitle: UILabel!
    @IBOutlet weak var friesTitle: UILabel!
    @IBOutlet weak var drinkTitle: UILabel!
    
    @IBOutlet weak var burgerPriceLabel: UILabel!
    @IBOutlet weak var friesPriceLabel: UILabel!
    @IBOutlet weak var drinkPriceLabel: UILabel!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let combo = currentCombo {
            burgerTitle.text = combo.getBurgerTitle()
            friesTitle.text = combo.getFriesTitle()
            drinkTitle.text = combo.getDrinkTitle()
            burgerPriceLabel.text = "$ " + combo.getBurgerPrice()
            friesPriceLabel.text = "$ " + combo.getFriesPrice()
            drinkPriceLabel.text = "$ " + combo.getDrinkPrice()
            totalPriceLabel.text = "$ " + combo.getTotalPrice()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
