//
//  DetailViewController.swift
//  TablasDeMultiplicar
//
//  Created by Gaston on 03/05/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var operationLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    var operation = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        operationLbl.text = operation
        resultLbl.text = result
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
