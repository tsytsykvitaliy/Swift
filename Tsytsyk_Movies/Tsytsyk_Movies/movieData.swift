//
//  movieData.swift
//  Tsytsyk_Movies
//
//  Created by Student on 4/29/22.
//

import Foundation
import UIKit

struct Movie {
    let title : String
    let image : UIImage
    let releasedYear : String
    let movieRating : String
    let boxOffice : String
    let moviePlot : String
    let cast : String
}

struct Genre {
    let category : String
    let movies : [Movie]
}

let action = Genre(category: "Action", movies: [
                                                Movie(title: "Aquaman", image: UIImage.init(imageLiteralResourceName: "aquaman"), releasedYear: "2018", movieRating: "6.8", boxOffice: "1.148 billion USD", moviePlot: "Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.", cast: "Jason Momoa, Amber Heard, Willem Dafoe"),
                                                Movie(title: "Dune", image: UIImage.init(imageLiteralResourceName: "dune"), releasedYear: "2021", movieRating: "8.1", boxOffice: "400.7 million USD", moviePlot: "A noble family becomes embroiled in a war for control over the galaxy's most valuable asset while its heir becomes troubled by visions of a dark future.", cast: "Timothée Chalamet, Rebecca Ferguson, Zendaya"),
                                                Movie(title: "No Time to Die", image: UIImage.init(imageLiteralResourceName: "noTimeToDie"), releasedYear: "2021", movieRating: "7.3", boxOffice: "774.2 million USD", moviePlot: "James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.", cast: "Daniel Craig, Ana de Armas, Rami Malek"),
                                                Movie(title: "The Lord of the Rings: The Fellowship of the Ring", image: UIImage.init(imageLiteralResourceName: "lotr"), releasedYear: "2001", movieRating: "8.8", boxOffice: "897.7 million USD", moviePlot: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.", cast: "Elijah Wood, Ian McKellen, Orlando Bloom"),
                                                Movie(title: "The Matrix Resurrections", image: UIImage.init(imageLiteralResourceName: "matrix"), releasedYear: "2021", movieRating: "5.7", boxOffice: "156.6 million USD", moviePlot: "Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.", cast: "Keanu Reeves, Carrie-Anne Moss, Yahya Abdul-Mateen II")])
let comedy = Genre(category: "Comedy", movies: [
                                                Movie(title: "American Pie", image: UIImage.init(imageLiteralResourceName: "americanPie"), releasedYear: "1999", movieRating: "7.0", boxOffice: "235.5 million USD", moviePlot: "Four teenage boys enter a pact to lose their virginity by prom night.", cast: "Jason Biggs, Chris Klein, Thomas Ian Nicholas"),
                                                Movie(title: "Deadpool", image: UIImage.init(imageLiteralResourceName: "deadpool"), releasedYear: "2016", movieRating: "8.0", boxOffice: "783.1 million USD", moviePlot: "A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.", cast: "Ryan Reynolds, Morena Baccarin, T.J. Miller"),
                                                Movie(title: "Legally Blonde", image: UIImage.init(imageLiteralResourceName: "legallyBlonde"), releasedYear: "2001", movieRating: "6.4", boxOffice: "141.8 million USD", moviePlot: "Elle Woods, a fashionable sorority queen, is dumped by her boyfriend. She decides to follow him to law school. While she is there, she figures out that there is more to her than just looks.", cast: "Reese Witherspoon, Luke Wilson, Selma Blair"),
                                                Movie(title: "The Wolf of Wall Street", image: UIImage.init(imageLiteralResourceName: "wolf"), releasedYear: "2013", movieRating: "8.2", boxOffice: "392 million USD", moviePlot: "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.", cast: "Leonardo DiCaprio, Jonah Hill, Margot Robbie"),
                                                Movie(title: "We're the Millers", image: UIImage.init(imageLiteralResourceName: "millers"), releasedYear: "2013", movieRating: "7.0", boxOffice: "270 million USD", moviePlot: "A veteran pot dealer creates a fake family as part of his plan to move a huge shipment of weed into the U.S. from Mexico.", cast: "Jason Sudeikis, Jennifer Aniston, Emma Roberts")])
let fantasy = Genre(category: "Fantasy", movies: [
                                                Movie(title: "Avatar", image: UIImage.init(imageLiteralResourceName: "avatar"), releasedYear: "2009", movieRating: "7.8", boxOffice: "2.847 billion USD", moviePlot: "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.", cast: "Sam Worthington, Zoe Saldana, Sigourney Weaver"),
                                                Movie(title: "Charlie and the Chocolate Factory", image: UIImage.init(imageLiteralResourceName: "charlie"), releasedYear: "2005", movieRating: "6.6", boxOffice: "475 million USD", moviePlot: "A young boy wins a tour through the most magnificent chocolate factory in the world, led by the world's most unusual candy maker.", cast: "Johnny Depp, Freddie Highmore, David Kelly"),
                                                Movie(title: "Harry Potter and the Sorcerer's Stone", image: UIImage.init(imageLiteralResourceName: "HP"), releasedYear: "2001", movieRating: "7.6", boxOffice: "974.8 million USD", moviePlot: "An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.", cast: "Daniel Radcliffe, Rupert Grint, Richard Harris"),
                                                Movie(title: "Pirates of the Caribbean: The Curse of the Black Pearl", image: UIImage.init(imageLiteralResourceName: "pirates"), releasedYear: "2003", movieRating: "8.0", boxOffice: "654.3 million USD", moviePlot: "Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor's daughter, from Jack's former pirate allies, who are now undead.", cast: "Johnny Depp, Geoffrey Rush, Orlando Bloom"),
                                                Movie(title: "Star Wars", image: UIImage.init(imageLiteralResourceName: "millers"), releasedYear: "1977", movieRating: "8.6", boxOffice: "775.8 million USD", moviePlot: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.", cast: "Mark Hamill, Harrison Ford, Carrie Fisher")])
let genres = [action, comedy, fantasy]
