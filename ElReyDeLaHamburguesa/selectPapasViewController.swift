//
//  selectPapasViewController.swift
//  ElReyDeLaHamburguesa
//
//  Created by Gaston on 20/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class selectPapasViewController: UIViewController {
    
    public var lstPotatoes = ListaPrecios(productos: [Producto("Papas Chicas",15.0), Producto("Papas Medianas",25.0), Producto("Papas Grandes",35.0), Producto("Aros de Cebolla",30.0)])
    
    
    public var pedidoPapas = SaleOrder()

    @IBAction func selectSmall(_ sender: Any) {
        pedidoPapas.setPotato(potato: lstPotatoes.getProducto(descripcion: "Papas Chicas"))
        goOn()
    }
    @IBAction func selectMedium(_ sender: Any) {
        pedidoPapas.setPotato(potato: lstPotatoes.getProducto(descripcion: "Papas Medianas"))
        goOn()
    }
    @IBAction func selectBig(_ sender: Any) {
        pedidoPapas.setPotato(potato: lstPotatoes.getProducto(descripcion: "Papas Grandes"))
        goOn()
    }

    @IBAction func selectOnion(_ sender: Any) {
        pedidoPapas.setPotato(potato: lstPotatoes.getProducto(descripcion: "Aros de Cebolla"))
        goOn()
    }
    public func goOn(){
        performSegue(withIdentifier: "goToSelectSoda", sender: nil)
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
        if let s = segue.destination as? selectSodaViewController {
            s.pedidoSoda = pedidoPapas
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
