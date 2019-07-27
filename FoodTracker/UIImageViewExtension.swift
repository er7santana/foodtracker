//
//  UIImageViewExtension.swift
//  FoodTracker
//
//  Created by Rodrigo Sant Ana on 27/07/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit

extension UIImageView {
    func isCircle(){
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
    func addBorder(_ borderWidth: Double, _ borderColor: CGColor){
        self.layer.borderColor = borderColor
        self.layer.borderWidth = CGFloat(borderWidth)
    }
}
