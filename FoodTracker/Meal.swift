//
//  Meal.swift
//  FoodTracker
//
//  Created by TMAN on 05/07/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    var name = ""
    var photo: UIImage?
    var rating = 0
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int){
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}