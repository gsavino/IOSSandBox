//
//  RowTareaTableViewCell.swift
//  ListaTareas
//
//  Created by Gaston on 03/05/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class RowTareaTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    
    func setup(t: Tarea){
        titleLbl.text = t.titulo
        setBackground(t)
    }
    
    fileprivate func setBackground(_ t: Tarea) {
        if !t.completada {
            self.backgroundColor = UIColor(red:0.93, green: 0.47, blue: 0.51, alpha: 1.0)
        } else {
            self.backgroundColor = UIColor(red:0.48, green: 0.92, blue: 0.49, alpha: 1.0)
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
