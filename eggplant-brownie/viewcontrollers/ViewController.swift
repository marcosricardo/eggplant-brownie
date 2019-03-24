//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Marcos Vinicius Alves Ricardo on 05/03/19.
//  Copyright © 2019 Marcos Vinicius Alves Ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var nameField : UITextField?
    @IBOutlet var happinessField : UITextField?
    //instância objeto do tipo MealsTableViewController
    var delegate : AddAMealDelegate?

    var items:Array<Item> = [
        Item(name: "Queijo", calories: 22.5),
        Item(name: "Molho de tomate", calories: 22.5),
        Item(name: "Carne moída", calories: 22.5),
    ]
    
    var selected : Array<Item> = []
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            //caso não o item não esteja selecionado ele é marcado com o ícone checkmark
            if(cell.accessoryType == UITableViewCell.AccessoryType.none) {
                cell.accessoryType = UITableViewCell.AccessoryType.checkmark
                let item = items[indexPath.row]
                //adiciona item selecionado
                selected.append(item)
            } else {
                 //retira ícone checkmark caso esteja selecionado no clique do usuário
                cell.accessoryType = UITableViewCell.AccessoryType.none
                
                let item = items[indexPath.row]
                let position = selected.index(of: item)
                //remove item da posição encontrado no array selected
                selected.remove(at: position!)
            }
        }
    }
  
    //define quantas linhas terá a tabela
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //retorna o conteúdo de cada linha (célula) da tabela
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let item = items[row]
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text = item.name //adicionamos o '.name' para exibir apenas o nome do item da refeição na tabela
        return cell
    }
    
    
    @IBAction func add(){
        if(nameField == nil || happinessField == nil){
           return
        }
    
        let name:String = nameField!.text!;
    
        if  let happiness = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness, items: selected)
            print("eaten \(meal.name) with happiness \(meal.happiness)! and itens: \(meal.items)");
            
            //adiciona meal acessando func add da classe MealsTableViewController
            delegate!.add(meal)
            
            /* navigationController é opcional "navigationController?.popViewController(animated: true)", isto evita crash validando a variável navigationController
            */
            if let navigation = navigationController {
                //o método é utilizado para apagar determinada View em tempo de execução.
                navigation.popViewController(animated: true)
            }
            
        }
    }
}

