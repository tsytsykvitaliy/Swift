//
//  GameViewController.swift
//  Tsytsyk_DiceGame
//
//  Created by Student on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {

    var player1 = ""
    var player2 = ""
    var roll1 = 0
    var roll2 = 0
    var won1 = 0
    var won2 = 0
    
    @IBOutlet weak var player1wonlabel: UILabel!
    
    @IBOutlet weak var player2wonlabel: UILabel!
    
    @IBOutlet weak var rollbutton: UIButton!
    
    @IBOutlet weak var player1scorelabel: UILabel!
    
    @IBOutlet weak var player2scorelabel: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player1wonlabel.text = "Total number of times \(player1) won: 0"
        player2wonlabel.text = "Total number of times \(player2) won: 0"
        player1scorelabel.text = "\(player1)'s current score: nil"
        player2scorelabel.text = "\(player2)'s current score: nil"
        
        imageview.image = UIImage(named: "play")
    }
    

    @IBAction func rollbuttonpressed(_ sender: UIButton) {
        roll1 = Int.random(in: 1...6)
        player1scorelabel.text = "\(player1)'s current score: \(roll1)"
        
        roll2 = Int.random(in: 1...6)
        player2scorelabel.text = "\(player1)'s current score: \(roll2)"
        
        if roll1 > roll2 {
            won1 += 1
            player1wonlabel.text = "Total number of times \(player1) won: \(won1)"
            switch roll1 {
            case 1: imageview.image = UIImage(named: "dice1")
            case 2: imageview.image = UIImage(named: "dice2")
            case 3: imageview.image = UIImage(named: "dice3")
            case 4: imageview.image = UIImage(named: "dice4")
            case 5: imageview.image = UIImage(named: "dice5")
            case 6: imageview.image = UIImage(named: "dice6")
            default:
                imageview.image = UIImage(named: "play")
                }
            }
        else if roll2 > roll1 {
            won2 += 1
            player2wonlabel.text = "Total number of times \(player2) won: \(won2)"
            switch roll2 {
            case 1: imageview.image = UIImage(named: "dice1")
            case 2: imageview.image = UIImage(named: "dice2")
            case 3: imageview.image = UIImage(named: "dice3")
            case 4: imageview.image = UIImage(named: "dice4")
            case 5: imageview.image = UIImage(named: "dice5")
            case 6: imageview.image = UIImage(named: "dice6")
            default:
                imageview.image = UIImage(named: "play")
            }
        }
        else {
            imageview.image = UIImage(named: "tie")
                }
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
