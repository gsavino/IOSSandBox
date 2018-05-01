//
//  SegueDesdeControllerViewController.swift
//  Multipantalla3Ejemplos
//
//  Created by Gaston on 30/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class SegueDesdeControllerViewController: UIViewController {
    
    @IBOutlet weak var muestroInfo: UILabel!
    var reciboInfo: String = ""

    @IBAction func goToNextNavigation(_ sender: Any) {
        performSegue(withIdentifier: "goNextWithNavigation", sender: nil)
    }
    
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        muestroInfo.text = reciboInfo

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let navC = segue.destination as? UINavigationController {
            
             let firstVC = navC.topViewController as! SegueConNavigationViewController
                firstVC.infoWithNav = reciboInfo
            
        }
        
        //if let seg = segue.destination as? SegueConNavigationViewController {
        //    seg.infoWithNav = reciboInfo
        //    print("paso la info \(reciboInfo)")
       // }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
