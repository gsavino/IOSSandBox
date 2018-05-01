//
//  showTotalViewController.swift
//  ElReyDeLaHamburguesa
//
//  Created by Gaston on 20/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class showTotalViewController: UIViewController {
    
    @IBOutlet weak var burgerDesc: UILabel!
    @IBOutlet weak var potatoDesc: UILabel!
    @IBOutlet weak var sodaDesc: UILabel!
    @IBOutlet weak var burgerPrice: UILabel!
    @IBOutlet weak var potatoPrice: UILabel!
    @IBOutlet weak var sodaPrice: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    public var pedidoTerminado = SaleOrder()

    @IBAction func goToWait(_ sender: Any) {
        performSegue(withIdentifier: "goToWait", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        burgerDesc.text = pedidoTerminado.getBurger()?.getDescripcion()
        burgerPrice.text = "$ "+String(describing: pedidoTerminado.getBurger()!.getPrecio())
        potatoDesc.text = pedidoTerminado.getPotato()?.getDescripcion()
        potatoPrice.text = "$ \(pedidoTerminado.getPotato()?.getPrecio() ?? 99.9)"
        sodaDesc.text = pedidoTerminado.getSoda()?.getDescripcion()
        sodaPrice.text = "$ \(pedidoTerminado.getSoda()?.getPrecio() ?? 99.9)"
        totalPrice.text = "$ \(pedidoTerminado.getTotal())"
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
