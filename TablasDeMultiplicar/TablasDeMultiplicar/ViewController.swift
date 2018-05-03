//
//  ViewController.swift
//  TablasDeMultiplicar
//
//  Created by Gaston on 03/05/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DisplayTxtEntry: UITextField!
    
    var valor = 0
    
    @IBOutlet weak var testModeSwitch: UISwitch!
    
    @IBAction func setNumber(_ sender: UIButton) {
        if let dtxt = DisplayTxtEntry.text, let addtxt = sender.titleLabel?.text {
            let output = dtxt + addtxt
            DisplayTxtEntry.text = output
            valor = Int(output)!
        }
    }
    
    @IBAction func clearDisplay(_ sender: Any) {
        DisplayTxtEntry.text = ""
        valor = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayTxtEntry.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let segVC = segue.destination as! TablaMultiplicarTableViewController
        segVC.numero = valor
        segVC.testMode = testModeSwitch.isOn
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}

