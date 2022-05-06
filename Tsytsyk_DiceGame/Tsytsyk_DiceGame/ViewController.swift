//
//  ViewController.swift
//  Tsytsyk_DiceGame
//
//  Created by Student on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1label: UITextField!
    
    @IBOutlet weak var player2label: UITextField!
    
    @IBOutlet weak var playbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playbuttonpressed(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "PlaySegue" {
            // make ResultViewControler a destination
            var destination = segue.destination as! GameViewController
            destination.player1 = player1label.text!
            destination.player2 = player2label.text!
        }
    }
}

