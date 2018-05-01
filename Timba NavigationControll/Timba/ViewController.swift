//
//  ViewController.swift
//  Timba
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var jugarDadosLbl: UIButton!
    @IBOutlet weak var jugarCartasLbl: UIButton!
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var alerta: UILabel!
    
    @IBAction func seleccionoJuego(_ sender: Any)
    {
        if nombre.text! != "" {
            performSegue(withIdentifier: "startPlay", sender: sender)
        } else {
            alerta.isHidden = false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alerta.isHidden = true
        /*
 
 
 */
        jugarDadosLbl.backgroundColor = .clear
        jugarDadosLbl.layer.cornerRadius = 5
        jugarDadosLbl.layer.borderWidth = 1
        jugarDadosLbl.layer.borderColor = UIColor.black.cgColor
        jugarDadosLbl.layer.shadowColor = UIColor.green.cgColor
        jugarDadosLbl.layer.shadowOpacity = 0.5
        jugarDadosLbl.layer.shadowRadius = 5
        let imagenCartas = UIImage(named: "cards")
        jugarCartasLbl.setImage(imagenCartas, for: UIControlState.normal)
        let imagenDices = UIImage(named: "dices")
        jugarDadosLbl.setImage(imagenDices, for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let vc = segue.destination as? JugarViewController
            {
                vc.nombre = nombre.text!
                let s = sender as! UIButton
                vc.juego = s.currentTitle!
                //present(vc, animated: true, completion: nil)
            }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}

