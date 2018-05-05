//
//  BurgerViewController.swift
//  TestNavigationBurgerKing
//
//  Created by Andres Ciaño on 4/17/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class BurgerViewController: UIViewController {

    var currentCombo: Combo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hamburguesaTapped(_ sender: Any) {
        currentCombo?.addBurger(name: "Hamburguesa", price: 15.0)
    }
    
    @IBAction func hamburguesaConQuesoTapped(_ sender: Any) {
        currentCombo?.addBurger(name: "Hamburguesa Con Queso", price: 18.0)
    }
    
    @IBAction func hamburguesaDobleTapped(_ sender: Any) {
        currentCombo?.addBurger(name: "Hamburguesa Doble", price: 25.0)
    }
    
    @IBAction func hamburguesaDePolloTapped(_ sender: Any) {
        currentCombo?.addBurger(name: "Hamburguesa de Pollo", price: 12.0)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FriesViewController {
            destination.currentCombo = self.currentCombo
        }
    }

}
