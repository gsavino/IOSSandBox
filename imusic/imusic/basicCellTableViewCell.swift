//
//  basicCellTableViewCell.swift
//  imusic
//
//  Created by Gaston savino on 18/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class basicCellTableViewCell: UITableViewCell {

    @IBOutlet weak var albumImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    func setup(title:String){
        titleLbl.text = title
        albumImg.image = UIImage(named: title)
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
