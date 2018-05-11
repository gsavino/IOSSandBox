//
//  appDetailViewController.swift
//  AppsCatalogDigitalHouse
//
//  Created by iOS on 11/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class appDetailViewController: UIViewController {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var categoryImg: UIImageView!
    
    @IBOutlet weak var IOSImg: UIImageView!
    @IBOutlet weak var androidImg: UIImageView!
    
    func setupDetail (app: App){
        nameLbl.text = app.name
        priceLbl.text = "$ \(app.getPrice())"
        categoryImg.image = UIImage(named: "finance")
        IOSImg.image = UIImage(named:"apple-blue")
        androidImg.image = UIImage(named:"android-blue")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
