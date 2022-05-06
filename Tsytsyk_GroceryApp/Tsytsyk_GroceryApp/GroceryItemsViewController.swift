//
//  GroceryItemsViewController.swift
//  Tsytsyk_GroceryApp
//
//  Created by Student on 4/12/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var groceryItems : [GroceryItem] = []
    var section = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = groceryItems[indexPath.row].itemName
        return cell
    }
    
    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
        self.title = section
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            destination.itemDesc = groceryItems[(groceryItemsTableView.indexPathForSelectedRow?.row)!]
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
