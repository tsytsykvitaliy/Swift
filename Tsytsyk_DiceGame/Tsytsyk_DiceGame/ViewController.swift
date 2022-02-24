//
//  ViewController.swift
//  Tsytsyk_DiceGame
//
//  Created by Student on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Player1Outlet: UITextField!
    
    @IBOutlet weak var Player2Outlet: UITextField!
    
    @IBOutlet weak var Player1Result: UILabel!
    
    @IBOutlet weak var Player2Result: UILabel!
    
    @IBOutlet weak var ResultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollDiceButton(_ sender: UIButton) {
        var player1No = Int.random(in: 1...6)
        var player2No = Int.random(in: 1...6)
        
        Player1Result.text = "\(Player1Outlet.text!)'s roll is: \(player1No)"
        Player2Result.text = "\(Player2Outlet.text!)'s roll is: \(player2No)"
        
        if (player1No > player2No) {
            ResultOutlet.text = "\(Player1Outlet.text!) won the game!"
        }
        else if (player2No > player1No) {
            ResultOutlet.text = "\(Player2Outlet.text!) won the game!"
        }
        else {
            ResultOutlet.text = "It's a tie!"
        }
    }
}
