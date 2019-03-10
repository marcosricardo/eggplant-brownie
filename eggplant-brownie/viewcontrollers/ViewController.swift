//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 05/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField!;
    @IBOutlet var happinessField : UITextField!;

    @IBAction func add(){
        let name = nameField.text;
        let happiness = happinessField.text;
        print("eaten \(name) with happiness \(happiness)!");
    }
}

