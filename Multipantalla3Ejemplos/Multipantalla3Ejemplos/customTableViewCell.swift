//
//  customTableViewCell.swift
//  Multipantalla3Ejemplos
//
//  Created by Gaston on 30/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var cellViewIMG: UIImageView!
    
    @IBOutlet weak var titulo: UILabel!
    
    func setUpImg (name: String, para nombre: String) {
        cellViewIMG.image = UIImage(named: name)
        titulo.text = "\(nombre), podrias ir aqui"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
