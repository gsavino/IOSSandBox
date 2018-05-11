//
//  addClubViewController.swift
//  FootballClub
//
//  Created by Gaston savino on 10/05/2018.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

protocol ClubInserter {
    func didSaveClub(c: Club)
}

class addClubViewController: UIViewController {
    
    var listener : ClubInserter?
    @IBOutlet weak var clubCountryTxF: UITextField!
    @IBOutlet weak var clubNameTxF: UITextField!
    
    func setupClub(l: ClubInserter){
        listener = l
    }

    @IBAction func saveClub(_ sender: Any) {
        if let l = listener, let n = clubNameTxF.text, let c = clubCountryTxF.text {
            l.didSaveClub(c: Club(name: n, country: c))
            navigationController?.popViewController(animated: true)
        }
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
