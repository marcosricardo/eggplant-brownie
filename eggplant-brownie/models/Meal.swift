//
//  Meal.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 10/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import Foundation

class Meal {
    let name:String
    let happiness:Int
    let items = Array<Item>()
    
    init(name:String, happiness:Int) {
        self.name = name
        self.happiness = happiness
    }
    
    func allCalories() -> Double{
        var total:Double = 0.0
        for item in items {
            total += item.calories
        }
        return total
    }
}
