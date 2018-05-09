//
//  ClubCellTableViewCell.swift
//  FootballClub
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class ClubCellTableViewCell: UITableViewCell {

    @IBOutlet weak var clubNameLbl: UILabel!
    @IBOutlet weak var clubCountryLbl: UILabel!
    var clubNameTmp: String = ""
    var clubCountryTmp: String = ""
    
    func setup(club: Club){
        clubNameTmp = club.name
        clubCountryTmp = club.country
        clubNameLbl.text = clubNameTmp
        clubCountryLbl.text = clubCountryTmp
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
