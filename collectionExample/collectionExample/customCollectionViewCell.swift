//
//  customCollectionViewCell.swift
//  collectionExample
//
//  Created by iOS on 16/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class customCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellLbl: UILabel!
    
    func setup(value:String){
        cellLbl.text = value
    }
}
