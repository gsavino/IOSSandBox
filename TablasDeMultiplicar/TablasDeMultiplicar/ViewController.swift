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
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonGo: UIButton!
    
    @IBOutlet weak var buttonDel: UIButton!
    @IBOutlet weak var buttonBlank: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
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
        redondeoBotones()
    }
    
    func redondeoBotones(){
        redondeoBoton(boton: button1)
        redondeoBoton(boton: button2)
        redondeoBoton(boton: button3)
        redondeoBoton(boton: button4)
        redondeoBoton(boton: button5)
        redondeoBoton(boton: button6)
        redondeoBoton(boton: button7)
        redondeoBoton(boton: button8)
        redondeoBoton(boton: button9)
        redondeoBoton(boton: button0)
        redondeoBoton(boton: buttonDel)
        redondeoBoton(boton: buttonBlank)
        redondeoBoton(boton: buttonGo)
    }
    
    func redondeoBoton(boton: UIButton){
        boton.layer.cornerRadius = 5
        boton.layer.borderWidth = 1
        boton.layer.borderColor = UIColor.black.cgColor
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

