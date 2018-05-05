//
//  ViewController.swift
//  Banderas
//
//  Created by Andres Ciaño on 1/29/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var selectedCountry = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapArgentina(_ sender: Any) {
        selectedCountry = "argentina"
        performSegue(withIdentifier: "GoToNext", sender: nil)
    }

    @IBAction func tapCroacia(_ sender: Any) {
        selectedCountry = "croacia"
        performSegue(withIdentifier: "GoToNext", sender: nil)
    }

    @IBAction func tapIslandia(_ sender: Any) {
        selectedCountry = "islandia"
        performSegue(withIdentifier: "GoToNext", sender: nil)
    }

    @IBAction func tapNigeria(_ sender: Any) {
        selectedCountry = "nigeria"
        performSegue(withIdentifier: "GoToNext", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BanderaViewController {
            destination.flagName = selectedCountry
        }
    }

}

