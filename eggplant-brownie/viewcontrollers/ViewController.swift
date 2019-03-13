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
    //instância objeto do tipo MealsTableViewController
    var mealsTable : MealsTableViewController?

  
    @IBAction func add(){
        if(nameField == nil || happinessField == nil){
           return
        }
    
        let name:String = nameField!.text!;
    
        if  let happiness = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness)
            print("eaten \(meal.name) with happiness \(meal.happiness)!");
            
            //adiciona meal acessando func add da classe MealsTableViewController
            mealsTable!.add(meal: meal)
            
            /* navigationController é opcional "navigationController?.popViewController(animated: true)", isto evita crash validando a variável navigationController
            */
            if let navigation = navigationController {
                //o método é utilizado para apagar determinada View em tempo de execução.
                navigation.popViewController(animated: true)
            }
            
        }
    }
}

