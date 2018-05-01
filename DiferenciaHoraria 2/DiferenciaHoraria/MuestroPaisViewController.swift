//
//  MuestroPaisViewController.swift
//  DiferenciaHoraria
//
//  Created by iOS on 20/4/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class MuestroPaisViewController: UIViewController {

    public var horaEn = Hora(hora: "0", minutos: "0")
    @IBOutlet weak var lblHora: UILabel!
    @IBOutlet weak var lblMinutos: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblAMPM: UILabel!
    
    @IBOutlet weak var screenImagen: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationItem.title = "Showing Country Hour!!!!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPais.text = horaEn.getPais()
        lblHora.text = horaEn.getHora()
        lblMinutos.text = horaEn.getMinutos()
        lblAMPM.text = horaEn.getBandaDescription()
        screenImagen.image = UIImage(named: horaEn.getImagen())
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Ejecuto el prepare por segue para volver")

        // Get the new view controller using segue.destinationViewController.
        if let s = segue.destination as? seleccionoPaisViewController {
            s.stpHora.value = 0.0
            s.stpMinutos.value = 0.0
            s.hora.setPais(pais: "")
            s.hora.setHora(hora: "0")
            s.hora.setMinutos(minutos: "0")
            s.hora.setBanda(value: 0)
            s.lblHora.text = "00"
            s.lblMinutos.text = "00"
            s.segControlAMPM.selectedSegmentIndex = 0
        }
        // Pass the selected object to the new view controller.
    }
    
*/
}
