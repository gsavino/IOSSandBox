//
//  DadosViewController.swift
//  Timba
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class DadosViewController: UIViewController {
    
    @IBOutlet weak var saludarLbl: UILabel!
    
    @IBOutlet weak var dadoUnoLbl: UILabel!
    @IBOutlet weak var dadoDosLbl: UILabel!
    
    var nombre = ""
    var dado = Dado()

    @IBAction func play(_ sender: Any) {
        dadoUnoLbl.text = String(dado.tirarDados())
        dadoDosLbl.text = String(dado.tirarDados())
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        saludarLbl.text = "Bienvenido \(nombre) !!!"
        
        
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
