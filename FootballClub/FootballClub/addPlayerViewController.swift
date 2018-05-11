//
//  addPlayerViewController.swift
//  FootballClub
//
//  Created by Gaston savino on 10/05/2018.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

protocol PlayerInserter {
    func didSavePlayer(player: Player, position: Int)
}

class addPlayerViewController: UIViewController {

    
    @IBOutlet weak var nameTxF: UITextField!
    @IBOutlet weak var lastNameTxF: UITextField!
    @IBOutlet weak var ageTxF: UITextField!
    @IBOutlet weak var heightTxF: UITextField!
    @IBOutlet weak var weightTxF: UITextField!
    @IBOutlet weak var favoritSC: UISegmentedControl!
    @IBOutlet weak var PositionSC: UISegmentedControl!
    var listener : PlayerInserter?
    
    @IBAction func savePlayer(_ sender: Any) {
        
        if let n = nameTxF.text, let ln = lastNameTxF.text, let age = Int(ageTxF.text!), let height = Double(heightTxF.text!), let weight = Int(weightTxF.text!){
            listener?.didSavePlayer(player: Player(name: n, lastName: ln, age: age, height: height, weight: weight, isStarter: getStarter()), position: getPosition())
            navigationController?.popViewController(animated: true)
            
        }
        
    }
    func getPosition ()->Int{
        return PositionSC.selectedSegmentIndex
    }
    func getStarter()->Bool{
        if favoritSC.selectedSegmentIndex == 0 { return true }
        return false
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
