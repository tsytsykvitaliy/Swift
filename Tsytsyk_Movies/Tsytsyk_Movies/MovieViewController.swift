//
//  MovieViewController.swift
//  Tsytsyk_Movies
//
//  Created by Student on 4/28/22.
//

import UIKit

class MovieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }
    
    func assignMovieDetails(index: IndexPath){
        movieNameLabel.text = "Movie Name: \(movies[index.row].title)"
        movieRatingLabel.text = "Movie Rating: \(movies[index.row].movieRating)"
        movieBoxOfficeLabel.text = "Box Office Collection: \(movies[index.row].boxOffice)"
        movieYearLabel.text = "Movie Released Year: \(movies[index.row].releasedYear)"
        moviePlotLabel.text = "Plot: \(movies[index.row].moviePlot)"
        movieCastLabel.text = "Cast: \(movies[index.row].cast)"
        }
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var movies : [Movie] = []
    
    var section = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        self.title = section
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
