//
//  DetailViewController.swift
//  Agenda
//
//  Created by iOS on 2/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var contacto: Contacto?
    @IBOutlet weak var contactoIMG: UIImageView!
    @IBOutlet weak var nombreLBL: UILabel!
    @IBOutlet weak var apellidoLbl: UILabel!
    @IBOutlet weak var telefonoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let c = contacto {
            setup(c)
        }
        // Do any additional setup after loading the view.
    }

    func setup(_ contacto: Contacto){
        contactoIMG.image = UIImage(named: contacto.nombre)
        nombreLBL.text = contacto.nombre
        apellidoLbl.text = contacto.apellido
        telefonoLbl.text = contacto.telefono
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
