//
//  DetalleTareaViewController.swift
//  ListaTareas
//
//  Created by Gaston on 03/05/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class DetalleTareaViewController: UIViewController {
    
    var tarea: Tarea?
    
    @IBOutlet var screen: UIView!
    @IBOutlet var tituloLbl: UILabel!
    @IBOutlet weak var descripcionLbl: UILabel!
    @IBOutlet weak var fechaCreacionLbl: UILabel!
    @IBOutlet weak var completadaStch: UISwitch!
    var taskUpdateDelegate : didTaskChange!
    
    
    @IBAction func changeCompleted(_ sender: UISwitch) {
        if let t = tarea{
            t.completada = sender.isOn
            setBackground(t)
            taskUpdateDelegate.updateTask(t: t)
            print("primera llamada al delegate")        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let t = tarea {
            taskUpdateDelegate.updateTask(t: t)
            print("segunda llamada al delegate")
        }
        
    }
    
    fileprivate func setBackground(_ t: Tarea) {
        if !t.completada {
            screen.backgroundColor = UIColor(red:0.93, green: 0.47, blue: 0.51, alpha: 1.0)
        } else {
            screen.backgroundColor = UIColor(red:0.48, green: 0.92, blue: 0.49, alpha: 1.0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let t = tarea {
            tituloLbl.text = t.titulo
            descripcionLbl.text = t.descripcion
            fechaCreacionLbl.text = "\(t.fechaCreacion)"
            completadaStch.isOn = t.completada
            setBackground(t)
        }
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
