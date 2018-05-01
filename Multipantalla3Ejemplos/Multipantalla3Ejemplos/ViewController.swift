//
//  ViewController.swift
//  Multipantalla3Ejemplos
//
//  Created by Gaston on 30/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goToSegueController(_ sender: Any) {
        let greenVC = storyboard?.instantiateViewController(withIdentifier: "SegueDesdeController") as! SegueDesdeControllerViewController
        greenVC.reciboInfo = "Gaston"
        
        present(greenVC, animated: true, completion: nil)
    }
    
    @IBAction func goToSegueButton(_ sender: Any) {
        let orangeVC = storyboard?.instantiateViewController(withIdentifier: "SegueDesdeBoton") as! SegueDesdeBotonViewController
        orangeVC.info = "vengo del principal!"
        present(orangeVC, animated: true, completion: nil)
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

