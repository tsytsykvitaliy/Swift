//
//  ViewController.swift
//  HelloApp
//
//  Created by Tsytsyk,Vitaliy on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ButtonClick(_ sender: UIButton) {
        // Read the text from the text field
        let enteredName = textOutlet.text!
        
        // Change the display label to Hello, name!
        displayLabel.text = "Hello, \(enteredName)!"
    }
}
