//
//  ConfirmationTableViewCell.swift
//  YallaJeye
//
//  Created by Joseph  on 1/5/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class ConfirmationTableViewCell: UITableViewCell {

    @IBOutlet weak var itemsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}



    