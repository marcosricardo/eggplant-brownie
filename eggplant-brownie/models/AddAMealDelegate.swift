//
//  MyDelegate.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 24/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import Foundation

//Protocolo de comunicação entre dois objetos
protocol AddAMealDelegate {
    func add(_ meal: Meal)
}
