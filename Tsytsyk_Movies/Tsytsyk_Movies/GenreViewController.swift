//
//  ViewController.swift
//  Tsytsyk_Movies
//
//  Created by Student on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        // populate the cell
        cell.textLabel?.text = genres[indexPath.row].category
        //return the cell
        return cell
    }
    
    @IBOutlet weak var genreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue" {
            let destination = segue.destination as! MovieViewController
            destination.movies = genres[(genreTableView.indexPathForSelectedRow?.row)!].movies
            destination.section = genres[(genreTableView.indexPathForSelectedRow?.row)!].category
        }
    }

}

