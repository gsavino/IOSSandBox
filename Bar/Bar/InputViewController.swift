//
//  InputViewController.swift
//  Bar
//
//  Created by iOS on 7/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

protocol ListenerNuevoProducto {
    func agregar(_ prod: Product)
}

class InputViewController: UIViewController {

    var listenerNuevoProduct : ListenerNuevoProducto?

    @IBOutlet weak var tituloTF: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    
    func setearListeneer(listener: ListenerNuevoProducto){
        listenerNuevoProduct = listener
    }
    
    @IBAction func save(_ sender: Any) {
        if let titulo = tituloTF.text ,
        let precio = priceTF.text,
        let precioDouble = Double(precio) {
            let producto = Product(name: titulo, price: precioDouble)
            listenerNuevoProduct?.agregar(producto)
            navigationController?.popViewController(animated: true)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
