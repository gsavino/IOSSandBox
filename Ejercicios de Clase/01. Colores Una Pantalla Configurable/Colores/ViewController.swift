//
//  ViewController.swift
//  Colores
//
//  Created by Andres Ciaño on 1/22/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func redTap() -> Void {
//        view.backgroundColor = UIColor.red
//        colorLabel.text = "ROJO"

        // 1ro INSTANCIAR LA PANTALLA ROJA (O SEA, REDVIEWCONTROLLER)
//        let newScreen = RedViewController()   > esto no sirve porque no tiene en cuenta la configuracion del storyboard
        // EN ESTE CASO PUNTUAL (Y SIEMPRE QUE INSTANCIAMOS UNA PANTALLA)
        // SABEMOS QUE STORYBOARD *NO* ES NIL, POR ESO PODEMOS USAR '!'
        // DE TODOS MODOS, SI USAMOS '?' PODEMOS USAR 'IF LET'

        // NUEVAMENTE PODEMOS USAR EL '!' PORQUE SABEMOS QUE EL TIPO DE DATO
        // DEL CONTROLLER CON ID "GENERICCOLORVIEWCONTROLLER" ES GENERICCOLORVIEWCONTROLLER
        let newScreen = storyboard!.instantiateViewController(withIdentifier: "GenericColorViewController") as! GenericColorViewController

        print("PASO A UNA VARIABLE DE LA NUEVA PANTALLA EL COLOR QUE DEBE USAR")
        newScreen.myBackgroundColor = UIColor.red

        // .coverVertical es la opcion default de modal (que aparece desde abajo)
//        newScreen.modalTransitionStyle = UIModalTransitionStyle.partialCurl

        print("PRESENTO LA NUEVA PANTALLA / TODAVIA NO SE CARGO SU VIEW")
        // 2do PRESENTAR ESA NUEVA PANTALLA
        present(newScreen, animated: true, completion: nil)
    }

    @IBAction func greenTap() -> Void {
//        view.backgroundColor = UIColor.green
//        colorLabel.text = "VERDE"
        let newScreen = storyboard!.instantiateViewController(withIdentifier: "GenericColorViewController") as! GenericColorViewController
        newScreen.myBackgroundColor = UIColor.green
        // .coverVertical es la opcion default de modal (que aparece desde abajo)
        newScreen.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(newScreen, animated: true, completion: nil)
    }

    @IBAction func blueTap() -> Void {
//        view.backgroundColor = UIColor.blue
//        colorLabel.text = "AZUL"
        let newScreen = storyboard!.instantiateViewController(withIdentifier: "GenericColorViewController") as! GenericColorViewController
        newScreen.myBackgroundColor = UIColor.blue
        // .coverVertical es la opcion default de modal (que aparece desde abajo)
        newScreen.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        present(newScreen, animated: true, completion: nil)
    }

    @IBAction func defaultTap(_ sender: Any) {
        let newScreen = storyboard!.instantiateViewController(withIdentifier: "GenericColorViewController") as! GenericColorViewController

        // EN ESTE BOTON NO PASO UN COLOR A LA SIGUIENTE PANTALLA
        // SE VA A MOSTRAR CON EL COLOR DEFAULT

        // .coverVertical es la opcion default de modal (que aparece desde abajo)
        newScreen.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        present(newScreen, animated: true, completion: nil)
    }
}

