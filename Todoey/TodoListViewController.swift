//
//  ViewController.swift
//  Todoey
//
//  Created by Jordan Chong on 12/14/18.
//  Copyright © 2018 Jordan Chong. All rights reserved.
//

import UIKit


// delegate and data source assignment as well as a lot of other stuff is handled simply by
// inheriting the UITableViewController instead of basic UIViewController
class TodoListViewController: UITableViewController  {

    let itemArray = ["Find Mike", "buy eggs", "destroy demogorgon"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

