//
//  HeaderView.swift
//  AppsCatalogDigitalHouse
//
//  Created by iOS on 11/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var headerTitleLbl: UILabel!
    func setupHeader(sec: Int){
        switch sec
        {
        case 0:
            headerTitleLbl.text = ""
            headerImg.image = UIImage(named: "education")
            case 1:
            headerTitleLbl.text = ""
            headerImg.image = UIImage(named: "games")
            case 2:
            headerTitleLbl.text = ""
            headerImg.image = UIImage(named: "business")
            case 3:
            headerTitleLbl.text = ""
            headerImg.image = UIImage(named: "finance")
            case 4:
            headerTitleLbl.text = ""
            headerImg.image = UIImage(named: "lifestyle")
            default:
            headerTitleLbl.text = ""
            headerImg.image = UIImage(named: "music")
        }
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
