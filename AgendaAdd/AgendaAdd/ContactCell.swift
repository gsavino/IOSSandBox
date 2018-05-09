//
//  ContactCell.swift
//  AgendaAdd
//
//  Created by Gaston savino on 08/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var genderView: UIImageView!
    @IBOutlet weak var lastNameLbl: UILabel!
    
    func setUpCell(contact:Contact){
        nameLbl.text = contact.name
        lastNameLbl.text = contact.lastName
        genderView.image = UIImage(named: "\(contact.gender)")
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
