//
//  ViewController.swift
//  Timba
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var alerta: UILabel!
    
    @IBAction func seleccionoDados(_ sender: Any)
    {
        if let n = nombre.text
        {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "DadosViewController") as? DadosViewController
            {
                vc.nombre = n
                present(vc, animated: true, completion: nil)
            }
        } else
        {
            alerta.isEnabled = true
        }

        
    }
    @IBAction func seleccionoCartas(_ sender: Any) {
        if let n = nombre.text
        {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "CartasViewController") as? CartasViewController{
                vc.nombre = n
                present(vc, animated: true, completion: nil)
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

