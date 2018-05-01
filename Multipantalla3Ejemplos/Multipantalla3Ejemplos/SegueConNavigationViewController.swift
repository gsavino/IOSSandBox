//
//  SegueConNavigationViewController.swift
//  Multipantalla3Ejemplos
//
//  Created by Gaston on 30/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class SegueConNavigationViewController: UIViewController {
    
    var infoWithNav = ""
    
    @IBOutlet weak var muestroInfo: UILabel!
    @IBAction func goNext(_ sender: Any) {
        performSegue(withIdentifier: "segueWithNavNext", sender: nil)
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("lo que me llega es \(infoWithNav)")
        muestroInfo.text = infoWithNav

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let seg = segue.destination as? FinalConNavigationViewController {
            seg.infoSegConNav = infoWithNav
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
