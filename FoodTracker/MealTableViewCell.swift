//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by TMAN on 05/07/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        photoImageView.isCircle()
        photoImageView.addBorder(1.0, UIColor.lightGray.cgColor)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
