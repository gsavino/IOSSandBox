//
//  AddViewController.swift
//  AgendaAdd
//
//  Created by Gaston savino on 08/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var mailTxt: UITextField!
    @IBOutlet weak var genderSC: UISegmentedControl!
    
    @IBAction func saveContact(_ sender: Any) {
        var person : Contact
        var g: Gender
        if genderSC.v
        
        person =  Contact(name: nameTxt.text!, lastName: lastNameTxt.text!, phone: phoneTxt.text!, gender: genderSC, email: mailTxt.text)
        
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
