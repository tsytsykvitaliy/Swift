//
//  ContactListViewController.swift
//  Tsytsyk_ContactList
//
//  Created by Student on 4/26/22.
//

import UIKit

class ContactListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        // populate the cell
        cell.textLabel?.text = contactNames[indexPath.row][0]
        //return the cell
        return cell
    }
    
    var contactNames = [["John","6612346543"],["Micheal","7654321786"],["Kevin","9087543157"],["Eden","8976543219"],["Rodrygo","7896543261"],["Adam","6578943219"],["Gabriel","6543216891"],["Mary","6123456789"]]
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    @IBAction func CreateButton(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "createSegue" {
            let destination = segue.destination as! CreateContactViewController
        } else if transition == "detailSegue" {
            let destination = segue.destination as! ContactDetailViewController
        }
    }
}
