//
//  TableViewController.swift
//  GroceryCompare
//
//  Created by Sarin Swift on 7/24/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

var categories = ["Beverages", "Bread/Bakery", "Canned/Jarred Goods", "Dairy", "Dry/Baking Goods", "Frozen Foods", "Meats", "Produce", "Fruits", "Vegetables"]
//var myImages = []
var myIndex = 0

class TableViewController: UITableViewController {
    
    // MARK: - Table view Data Source
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        
        cell.textLabel?.text = categories[indexPath.row]
//        cell.imageView.image = [UIImage imageNamed:]
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self) 
    }
}
