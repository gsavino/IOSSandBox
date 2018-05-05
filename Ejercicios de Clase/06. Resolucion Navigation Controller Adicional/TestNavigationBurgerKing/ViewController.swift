//
//  ViewController.swift
//  TestNavigationBurgerKing
//
//  Created by Andres Ciaño on 4/17/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BurgerViewController {
            destination.currentCombo = Combo()
        }
    }


}

