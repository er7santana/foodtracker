//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Rodrigo Sant Ana on 29/06/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    
    //MARK: Meal class tests
    
    //Confirm that Meal Class initializer returns a Meal object when valid parameters are passed
    func testMealInitializationSucceds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    //Confirm that Meal Class Initializer returns nil object when name is empty or rating is negative
    func testMealInitializationFailsWithEmptyName(){
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
