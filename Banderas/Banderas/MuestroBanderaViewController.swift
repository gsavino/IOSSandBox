//
//  MuestroBanderaViewController.swift
//  Banderas
//
//  Created by Gaston on 20/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class MuestroBanderaViewController: UIViewController {
    
    public var flagToShow = "no se que paso"
    @IBOutlet weak var imgFlagToShow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFlagToShow.image = UIImage(named: flagToShow)
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
