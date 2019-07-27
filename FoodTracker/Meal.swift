//
//  Meal.swift
//  FoodTracker
//
//  Created by TMAN on 05/07/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit
import os.log

class Meal : NSObject, NSCoding {
    
    //MARK: - Properties
    var name = ""
    var photo: UIImage?
    var rating = 0
    
    //MARK: - Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("meals")
    
    //MARK: - Types
    struct PropertyKey {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    
    //MARK: - Initialization
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
    
    //MARK: - NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(rating, forKey: PropertyKey.rating)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        //The name is required, so if we cannot decode a name string, the initializer should fail
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            os_log("unable to decode the name of a Meal object", log: OSLog.default, type: .debug)
            return nil
        }
        
        let photo = aDecoder.decodeObject(forKey: PropertyKey.photo) as? UIImage
        let rating = aDecoder.decodeInteger(forKey: PropertyKey.rating)
        
        self.init(name: name, photo: photo, rating: rating)
    }
}
