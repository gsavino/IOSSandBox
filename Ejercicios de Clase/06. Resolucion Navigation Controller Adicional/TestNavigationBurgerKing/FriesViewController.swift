//
//  FriesViewController.swift
//  TestNavigationBurgerKing
//
//  Created by Andres Ciaño on 4/17/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class FriesViewController: UIViewController {

    var currentCombo: Combo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func smallTap(_ sender: UIButton) {
        currentCombo?.addFries(name: "Papas Fritas Chicas", price: 15.0)
    }
    
    @IBAction func mediumTap(_ sender: UIButton) {
        currentCombo?.addFries(name: "Papas Fritas Medianas", price: 25.0)
    }
    
    @IBAction func largeTap(_ sender: UIButton) {
        currentCombo?.addFries(name: "Papas Fritas Grandes", price: 35.0)
    }
    
    @IBAction func onionTap(_ sender: UIButton) {
        currentCombo?.addFries(name: "Aros de Cebolla Deluxe", price: 30.0)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DrinkViewController {
            destination.currentCombo = self.currentCombo
        }
    }
    
}
