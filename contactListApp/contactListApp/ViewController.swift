//
//  ViewController.swift
//  contactListApp
//
//  Created by Student on 4/19/22.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        // populate the cell
        cell.textLabel?.text = contactNames[indexPath.row]
        //return the cell
        return cell
    }
    
    var contactNames : [String] = []
    
    @UIApplicationMain
    class AppDelegate: UIResponder, UIApplicationDelegate {

      var window: UIWindow?

      func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
      }
    }
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }

    func fetchData() {
        // create a database reference
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value, with: { snapshot in
            let contacts = snapshot.value as! NSDictionary
            self.contactNames = contacts.allKeys as! [String]
            
            // reload the data
            self.tableViewOutlet.reloadData()
        })
    }
}

