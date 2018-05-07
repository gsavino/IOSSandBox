//
//  ProductCellTableViewCell.swift
//  Bar
//
//  Created by iOS on 4/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit
protocol QtyModdifier {
    func increaseQty(celda: UITableViewCell)
    func decreaseQty(celda: UITableViewCell)
}

class ProductCellTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var QtyLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    var qtyDelegate: QtyModdifier?

    
    @IBAction func restQty(_ sender: Any) {
        qtyDelegate?.decreaseQty(celda: self)
    }
    
    @IBAction func addQty(_ sender: Any) {
        qtyDelegate?.increaseQty(celda: self)
    }
    
    func setUpProductCell(product: Product, delegate: QtyModdifier){
        qtyDelegate = delegate
        productNameLbl.text = product.name
        priceLbl.text = "\(product.price)"
        QtyLbl.text = "\(product.quantity)"

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
