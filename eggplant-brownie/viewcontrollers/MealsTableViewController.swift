//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 11/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController{
    
    //array de Meals
    var meals = [Meal(name: "Lasagna", happiness: 5), Meal(name: "Spaghetti", happiness: 5), Meal(name: "Pizza", happiness: 5)]
   
    //define quantas linhas terá a tabela
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    //retorna o conteúdo de cada linha (célula) da tabela 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name //adicionamos o '.name' para exibir apenas o nome da refeição na tabela
        return cell
    }
    
}
