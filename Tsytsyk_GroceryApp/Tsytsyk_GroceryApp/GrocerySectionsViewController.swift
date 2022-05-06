//
//  ViewController.swift
//  Tsytsyk_GroceryApp
//
//  Created by Student on 4/12/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grocerySections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = grocerySections[indexPath.row].section
        return cell
        
    }

    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Grocery Sections"
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemsSegue" {
            let destination = segue.destination as! GroceryItemsViewController
            destination.groceryItems = grocerySections[(grocerySectionsTableView.indexPathForSelectedRow?.row)!].items_Array
            destination.section = grocerySections[(grocerySectionsTableView.indexPathForSelectedRow?.row)!].section
        }
    }
}

