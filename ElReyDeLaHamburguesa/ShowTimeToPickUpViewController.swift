//
//  ShowTimeToPickUpViewController.swift
//  ElReyDeLaHamburguesa
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ShowTimeToPickUpViewController: UIViewController {

    @IBOutlet weak var nroPedido: UILabel!
    @IBOutlet weak var minutosEspera: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nroPedido.text = "\(arc4random_uniform(500)+1)"
        minutosEspera.text = "\(arc4random_uniform(4)+1)"
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
