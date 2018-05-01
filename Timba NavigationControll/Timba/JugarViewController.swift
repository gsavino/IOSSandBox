//
//  DadosViewController.swift
//  Timba
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class JugarViewController: UIViewController {
    
    @IBOutlet weak var saludarLbl: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var dadoUnoLbl: UILabel!
    @IBOutlet weak var dadoDosLbl: UILabel!
    @IBOutlet weak var cartaLbl: UILabel!
    
    var juego = ""
    var nombre = ""
    var dado = Dado()
    var mazo = Mazo()
    
    @IBAction func play(_ sender: Any) {
        if juego == "Jugar a los Dados" {
            dadoUnoLbl.text = String(dado.tirarDados())
            dadoDosLbl.text = String(dado.tirarDados())
            
        } else {
            let carta = mazo.extraigoCarta()
            cartaLbl.text = carta.getId() + " de " + carta.getPalo()
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        saludarLbl.text = "Bienvenido \(nombre) !!!"
        
        if juego == "Jugar a los Dados" {
            dadoUnoLbl.isHidden = false
            dadoDosLbl.isHidden = false
            cartaLbl.isHidden = true
            
        } else {
            playBtn.setTitle("Sacar una Carta", for: .normal)
            dadoUnoLbl.isHidden = true
            dadoDosLbl.isHidden = true
            cartaLbl.isHidden = false
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
