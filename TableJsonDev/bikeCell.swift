//
//  bikeCell.swift
//  TableJsonDev
//
//  Created by Artem on 02/04/2019.
//  Copyright © 2019 Artem. All rights reserved.
//

import UIKit

class bikeCell: UITableViewCell {
    
    @IBOutlet weak var modelLabel: UILabel!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureBikeCell (category: Bikes) {
        modelLabel.text = category.model
        companyLabel.text = category.company
        priceLabel.text = String(category.price)

        
    }

}
