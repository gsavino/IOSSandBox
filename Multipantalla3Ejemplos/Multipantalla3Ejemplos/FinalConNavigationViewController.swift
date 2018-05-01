//
//  FinalConNavigationViewController.swift
//  Multipantalla3Ejemplos
//
//  Created by Gaston on 30/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class FinalConNavigationViewController: UIViewController {

    
    @IBOutlet weak var muestroInfo: UILabel!
    var infoSegConNav: String = ""
    
    @IBAction func irATabla(_ sender: Any) {
        performSegue(withIdentifier: "goToTabla", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        muestroInfo.text = infoSegConNav
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let seg = segue.destination as? tablaTableViewController {
            seg.nombre = infoSegConNav
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
