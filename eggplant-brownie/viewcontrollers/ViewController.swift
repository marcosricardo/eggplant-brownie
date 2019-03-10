//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 05/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField?
    @IBOutlet var happinessField : UITextField?

    @IBAction func add(){
        if(nameField == nil || happinessField == nil){
           return
        }
    
        let name:String = nameField!.text!;
    
        if  let happiness = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness)
            print("eaten \(meal.name) with happiness \(meal.happiness)!");
        }
    }
}

