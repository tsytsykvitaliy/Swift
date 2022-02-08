//
//  ViewController.swift
//  oddoreven
//
//  Created by Student on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EnterLabel: UILabel!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBAction func submitPush(_ sender: UIButton) {
        outputLabel.text = oddoreven(num: Int (numberInput.text!)!)
    }
    
    func oddoreven(num: Int) -> String {
        if (num % 2 == 0) {
            return "Even"
        }
        else {
            return "Odd"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

