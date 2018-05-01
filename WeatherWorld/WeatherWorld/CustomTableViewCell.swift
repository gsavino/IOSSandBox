//
//  CustomTableViewCell.swift
//  WeatherWorld
//
//  Created by Gaston on 27/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var tempertureLbl: UILabel!
    @IBOutlet weak var climateImg: UIImageView!
    @IBOutlet weak var customCellView: UIView!
    @IBOutlet weak var customClimateCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        climateImg.layer.cornerRadius = climateImg.frame.height / 2
    }

}
