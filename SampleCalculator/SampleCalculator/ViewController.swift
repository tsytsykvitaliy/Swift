//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Vitaliy Tsytsyk on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var operandOne:Double = -1.1
    var operandTwo:Double = -1.1
    var calcOperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "1"
        if (operandOne == -1.1) {
            operandOne = 1
        }
        else {
            operandTwo = 1
        }
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "2"
        if (operandTwo == -1.1) {
            operandTwo = 2
        }
        else {
            operandOne = 2
        }
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "+"
        if (calcOperator == " ") {
            calcOperator = "+"
        }
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "="
        if (calcOperator == "+") {
            displayLabel.text = displayLabel.text! + "\(operandOne  + operandTwo)"
        }
    }
}

