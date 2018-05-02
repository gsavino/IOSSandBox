//
//  DetailViewController.swift
//  Places
//
//  Created by iOS on 2/5/18.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var placeInput: Place?

    @IBOutlet weak var paisajeImg: UIImageView!
    @IBOutlet weak var flagImg: UIImageView!
    @IBOutlet weak var countryLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let p = placeInput {
            setup(place: p)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup(place: Place){
        paisajeImg.image = place.imagen
        flagImg.image = place.bandera
        countryLbl.text = place.pais
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
