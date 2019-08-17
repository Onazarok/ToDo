//
//  ViewController.swift
//  ToDo
//
//  Created by Oleg Nazarok on 8/14/19.
//  Copyright © 2019 Oleg Nazarok. All rights reserved.
//

import UIKit

class ToDoListViewController : UITableViewController {
    
    let ItemArray = ["Get a million", "roll with niggas", "play football"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ItemArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = ItemArray[indexPath.row]
        
        
        
        return cell
        
    }

    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(ItemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    
    
}

