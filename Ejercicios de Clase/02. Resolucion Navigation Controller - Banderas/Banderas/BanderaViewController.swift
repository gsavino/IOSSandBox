//
//  BanderaViewController.swift
//  Banderas
//
//  Created by Andres Ciaño on 1/29/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class BanderaViewController: UIViewController {

    var flagName = ""
    @IBOutlet weak var flagImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        flagImageView.image = UIImage(named: flagName)
    }

}
