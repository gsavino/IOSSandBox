//
//  seleccionoPaisViewController.swift
//  DiferenciaHoraria
//
//  Created by iOS on 20/4/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class seleccionoPaisViewController: UIViewController {
    @IBOutlet weak var lblHora: UILabel!
    @IBOutlet weak var lblMinutos: UILabel!
    @IBOutlet weak var stpHora: UIStepper!{
        didSet{
            lblHora.text = hora.getHora()
            print("Acutalizacion automatica///////////////////")
        }
    }
    @IBOutlet weak var stpMinutos: UIStepper!
    @IBOutlet weak var segControlAMPM: UISegmentedControl!

    var hora = Hora(hora: "00",minutos: "00")
    
    @IBAction func modificoHora(_ sender: UIStepper) {
        hora.setHora(hora: String(stpHora.value))
        print("Hora :\(hora.getHora())")
        lblHora.text = hora.getHora()
        segControlAMPM.selectedSegmentIndex = hora.getBanda()
        print("Pais:\(hora.getPais()) hora DEBE SER:\(hora.getHora()) stpHora:\(stpHora.value)")
    }
    
    @IBAction func modificoMinutos(_ sender: UIStepper) {
        hora.setMinutos(minutos: String(stpMinutos.value))
        lblMinutos.text = hora.getMinutos()
    }
    
    @IBAction func modificoAMPM(_ sender: Any) {
        hora.setBanda(value: segControlAMPM.selectedSegmentIndex)
    }
    @IBAction func seleccionoFrancia(_ sender: Any) {
        hora.setPais(pais: "Francia")
        performSegue(withIdentifier: "horaPais", sender: sender)
    }
    @IBAction func seleccinoSudafrica(_ sender: Any) {
        hora.setPais(pais: "Sudafrica")
        performSegue(withIdentifier: "horaPais", sender: sender)
        
    }
    @IBAction func seleccionoChina(_ sender: Any) {
        hora.setPais(pais: "China")
        performSegue(withIdentifier: "horaPais", sender: sender)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //super.viewWillAppear(animated: true)
        navigationItem.title = "Main Screen"
        print("ejecutando ViewWillAppear!!!!!!!!!!!!!")
        hora.setPais(pais: "")
        hora.setHora(hora: "0")
        hora.setBanda(value: 0)
        hora.setMinutos(minutos: "0")
        lblHora.text = hora.getHora()
        lblMinutos.text = hora.getMinutos()
        stpHora.value = 0
        stpMinutos.value = 0
        
        
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

         if let seleccionado = segue.destination as? MuestroPaisViewController
         {
            seleccionado.horaEn = hora
        }
        // Pass the selected object to the new view controller.
    }


}
