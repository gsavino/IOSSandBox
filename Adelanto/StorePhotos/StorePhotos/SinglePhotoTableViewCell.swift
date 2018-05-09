//
//  SinglePhotoTableViewCell.swift
//  StorePhotos
//
//  Created by Andres Ciaño on 12/4/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class SinglePhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!

    func setup(_ image: UIImage) {
        photoImageView.image = image
    }

}
