//
//  ViewController.swift
//  practice2
//
//  Created by Enrico Pineda on 9/25/17.
//  Copyright © 2017 Enrico Pineda. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var dogs: [String] = ["bulldog", "pug", "lab"]
    var cats: [String] = ["cat", "garfield"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Dog"
        }
        else if section == 1 {
            return "Cat"
        }
        // ...
        return "Not here"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return dogs.count
        }
        else if section == 1 {
            return cats.count
        }
        // ...
        return 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0{
            cats.append(dogs[indexPath.row])
            dogs.remove(at: indexPath.row)
        }
        else {
            dogs.append(cats[indexPath.row])
            cats.remove(at: indexPath.row)
        }
        
        tableView.reloadData()
        

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = dogs[indexPath.row]
            return cell
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = cats[indexPath.row]
            return cell
        }
        return cell
        
    }
    


}

