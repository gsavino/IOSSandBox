//
//  DetailViewController.swift
//  AgendaAdd
//
//  Created by Gaston savino on 08/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var lastNameLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var mailLbl: UILabel!
    @IBOutlet weak var genderIView: UIImageView!
    
    var nameTmp : String = ""
    var lastNameTmp : String = ""
    var phoneTmp : String = ""
    var mailTmp : String? = nil
    var genderTmp : String = ""
    
    func setupDetail (c: Contact){
        nameTmp = c.name
        lastNameTmp = c.lastName
        phoneTmp = "\(c.phone)"
        mailTmp = c.email
        genderTmp = "\(c.gender)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = nameTmp
        lastNameLbl.text = lastNameTmp
        phoneLbl.text = phoneTmp
        mailLbl.text = mailTmp
        genderIView.image = UIImage(named: genderTmp)
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
