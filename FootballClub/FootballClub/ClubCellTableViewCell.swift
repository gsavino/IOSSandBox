//
//  ClubCellTableViewCell.swift
//  FootballClub
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

protocol FavouriteUpdatable {
    func updateFavorito(sec: Int, pos: Int)
}

import UIKit

class ClubCellTableViewCell: UITableViewCell {


    @IBOutlet weak var clubNameLbl: UILabel!
    @IBOutlet weak var clubCountryLbl: UILabel!
    @IBOutlet weak var favouriteBtn: UIButton!
    
    var clubNameTmp: String = ""
    var clubCountryTmp: String = ""
    var club : Club?
    var listenerCell: FavouriteUpdatable?
    var position: Int = 0
    var section: Int = 0
    
    fileprivate func setButtonImg(_ club: Club) {
        if club.favourite == true {
            favouriteBtn.setImage( UIImage(named: "HeartTrue")  , for: .normal)
        } else {
            favouriteBtn.setImage(UIImage(named: "HeartFalse"), for: .normal)
        }
    }
    
    @IBAction func changeFavouriteState(_ sender: Any) {
        if let l = listenerCell{
            l.updateFavorito(sec: section, pos: position)
        }
    }
    
    func setup(position: Int, section: Int, club: Club, listenerCellClub: FavouriteUpdatable){
        self.listenerCell = listenerCellClub
        self.position = position
        self.section = section
        self.club = club
        clubNameTmp = club.name
        clubCountryTmp = club.country
        clubNameLbl.text = clubNameTmp
        clubCountryLbl.text = clubCountryTmp
        setButtonImg(club)
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
