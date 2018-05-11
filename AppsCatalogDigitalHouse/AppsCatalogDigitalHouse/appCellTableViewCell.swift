//
//  appCellTableViewCell.swift
//  AppsCatalogDigitalHouse
//
//  Created by iOS on 11/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class appCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var isAndroidImg: UIImageView!
    @IBOutlet weak var isIOSImg: UIImageView!
    
    var app : App?
    
    func setup(app: App){
        self.app = app
        nameLbl.text = app.name
        priceLbl.text = "$ \(app.getPrice())"
        switch app.platform {
            case .Android:
                isAndroidImg.image = UIImage(named:"android-blue")
                isIOSImg.image = UIImage(named:"apple-gray")
            case .IOS:
                isIOSImg.image = UIImage(named: "apple-blue")
                isAndroidImg.image = UIImage(named: "android-gray")
            default:
                isIOSImg.image = UIImage(named: "apple-blue")
                isAndroidImg.image = UIImage(named: "android-blue")
}
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
