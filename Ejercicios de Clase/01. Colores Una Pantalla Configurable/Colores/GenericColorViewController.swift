//
//  GenericColorViewController.swift
//  Colores
//
//  Created by Andres Ciaño on 16/04/2018.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class GenericColorViewController: UIViewController {

    var myBackgroundColor: UIColor = UIColor.purple
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("SE EJECUTA EL VIEWDIDLOAD DE GENERICCOLORVIEWCONTROLLER")
        print("SOLAMENTE AHORA PUEDO MODIFICAR EL ATRIBUTO DE 'VIEW'")
        view.backgroundColor = myBackgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
