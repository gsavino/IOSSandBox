//
//  SelectBurgerViewController.swift
//  ElReyDeLaHamburguesa
//
//  Created by Gaston on 20/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class SelectBurgerViewController: UIViewController {
    
    public var lstBurgers = ListaPrecios(productos: [Producto("Hamburguesa Sola",15.0), Producto("Hamburguesa con Queso",18.0), Producto("Hamburguesa Doble con Queso",25.0), Producto("Hamburguesa de Pollo",12.0)])
    
    public var pedidoBurger = SaleOrder()
    @IBAction func selectSimpleBurger(_ sender: Any) {
        pedidoBurger.setBurger(burguer: lstBurgers.getProducto(descripcion: "Hamburguesa Sola"))
        goOn()
    }
    @IBAction func selectCheesBurger(_ sender: Any) {
                pedidoBurger.setBurger(burguer: lstBurgers.getProducto(descripcion: "Hamburguesa con Queso"))
        goOn()
    }
    @IBAction func selectDoubleCheesBurger(_ sender: Any) {
                pedidoBurger.setBurger(burguer: lstBurgers.getProducto(descripcion: "Hamburguesa Doble con Queso"))
        goOn()
    }
    @IBAction func selectChikenBurger(_ sender: Any) {
                pedidoBurger.setBurger(burguer: lstBurgers.getProducto(descripcion: "Hamburguesa de Pollo"))
        goOn()
    }
    private func goOn(){
        performSegue(withIdentifier: "goToSelectPotato", sender: nil)
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
        if let s = segue.destination as? selectPapasViewController {
            s.pedidoPapas = pedidoBurger
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
