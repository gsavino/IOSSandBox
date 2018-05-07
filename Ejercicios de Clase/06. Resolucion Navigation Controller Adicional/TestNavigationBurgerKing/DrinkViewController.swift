//
//  DrinkViewController.swift
//  TestNavigationBurgerKing
//
//  Created by Andres Ciaño on 4/17/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class DrinkViewController: UIViewController {

    var currentCombo: Combo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonTap(_ sender: UIButton) {
        if let name = sender.titleLabel?.text {
            currentCombo?.addDrink(name: name, price: 20.0)
        }
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TotalViewController {
            destination.currentCombo = self.currentCombo
        }
    }
    
}
