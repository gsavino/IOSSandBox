//
//  SegueDesdeBotonViewController.swift
//  Multipantalla3Ejemplos
//
//  Created by Gaston on 30/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class SegueDesdeBotonViewController: UIViewController {
    
    var info = ""

    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let enviado = segue.destination as? FinalSegueDesdeBotonViewController {
            enviado.infoFinal = "voy al ultimo!"
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
