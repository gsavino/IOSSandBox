
//
//  JugadorDetalleViewController.swift
//  FootballClub
//
//  Created by Gaston savino on 10/05/2018.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class JugadorDetalleViewController: UIViewController {

    @IBOutlet weak var nameLastNameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var isStarterImg: UIImageView!
    var player : Player?
    var position = ""
    var club : Club?
    @IBOutlet weak var positionView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let n = club?.name, let c = club?.country, let p = player {
            positionView.image = UIImage(named: position)
            
            nameLastNameLbl.text = "\(p.name) \(p.lastName)"
            heightLbl.text = "\(p.height)"
            weightLbl.text = "\(p.weight)"
            ageLbl.text = "\(p.age)"
            if p.isStarter {
                isStarterImg.image = UIImage(named: "playGreen")
            } else {
                isStarterImg.image = UIImage(named: "pauseYellow")
            }
            
        }

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
