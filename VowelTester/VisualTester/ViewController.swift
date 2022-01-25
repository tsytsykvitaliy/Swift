//
//  ViewController.swift
//  VowellTester
//
//  Created by Tsytsyk,Vitaliy on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextOutlet: UITextField!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        // read the text
        var enteredText = TextOutlet.text!
        // check for a vowel
        if (enteredText.contains("a") || enteredText.contains("e") || enteredText.contains("y") || enteredText.contains("u") || enteredText.contains("i") || enteredText.contains("o")) {
            // display on the label
            DisplayLabel.text = "The entered text contains (a) vowel(s)"
        }
        else {
            DisplayLabel.text = "The entered text does not contain (a) vowel(s)"
        }
    }
    
}

