//
//  selectSodaViewController.swift
//  ElReyDeLaHamburguesa
//
//  Created by Gaston on 20/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class selectSodaViewController: UIViewController {

    public var lstSodas = ListaPrecios(productos: [Producto("Coca Cola",20.0), Producto("Sprite",20.0), Producto("Fanta",20.0), Producto("Agua sin Gas",20.0)])
    
    public var pedidoSoda = SaleOrder()
    
    @IBAction func selectSoda(_ sender: Any) {
        if let b = sender as? UIButton {
            pedidoSoda.setSoda(soda: lstSodas.getProducto(descripcion: b.currentTitle!))
            performSegue(withIdentifier: "goToWait", sender: nil)
        }
        
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
        if let b = segue.destination as? showTotalViewController {
            b.pedidoTerminado = pedidoSoda
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
