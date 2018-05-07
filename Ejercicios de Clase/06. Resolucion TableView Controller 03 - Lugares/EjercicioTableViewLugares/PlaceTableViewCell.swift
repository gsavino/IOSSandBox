//
//  PlaceTableViewCell.swift
//  EjercicioTableViewLugares
//
//  Created by Andres Ciaño on 4/19/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    public func setupWith(_ string: String) {
        photoImageView.image = UIImage(named: string)
        nameLabel.text = string
    }

}
