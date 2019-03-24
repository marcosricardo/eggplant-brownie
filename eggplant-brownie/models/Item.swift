//
//  Item.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 10/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import Foundation

class Item : Equatable {
    let name: String
    let calories:Double
    
    init(name: String, calories:Double){
        self.name = name
        self.calories = calories
    }
    
    static func ==(first: Item, second: Item) -> Bool {
        return first.name == second.name && first.calories == second.calories
    }
}
