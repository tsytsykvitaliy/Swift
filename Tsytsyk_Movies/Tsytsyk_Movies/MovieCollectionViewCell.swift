//
//  MovieCollectionViewCell.swift
//  Tsytsyk_Movies
//
//  Created by Student on 4/29/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovie(with movie : Movie) {
        imageViewOutlet.image = movie.image
    }
}
