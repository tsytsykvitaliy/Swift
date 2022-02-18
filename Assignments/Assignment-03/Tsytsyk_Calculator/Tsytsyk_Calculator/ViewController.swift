//
//  ViewController.swift
//  Tsytsyk_Calculator
//
//  Created by Tsytsyk, Vitaliy on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    var number1 = 0.0
    var number2 = 0.0
    var numSt = ""
    var sign = ""
    var eraseNum = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func ACButton(_ sender: UIButton) {
        number1 = 0.0
        number2 = 0.0
        displayLabel.text = " "
        eraseNum = true
    }
    @IBAction func CButton(_ sender: UIButton) {
        displayLabel.text = " "
        eraseNum = true
    }
    @IBAction func NegativeButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number1 = Double (numSt)! * -1
        if (String (number1).contains(".0") && String (number1).last == "0") {
            displayLabel.text = "\(Int (number1))"
        }
        else {
            displayLabel.text = "\(number1)"
        }
    }
    @IBAction func DivideButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number1 = Double (numSt)!
        sign = "/"
        displayLabel.text = " "
    }
    @IBAction func MultiplyButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number1 = Double (numSt)!
        sign = "*"
        displayLabel.text = " "
    }
    @IBAction func MinusButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number1 = Double (numSt)!
        sign = "-"
        displayLabel.text = " "
    }
    @IBAction func PlusButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number1 = Double (numSt)!
        sign = "+"
        displayLabel.text = " "
    }
    @IBAction func PercentageButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number1 = Double (numSt)!
        sign = "%"
        displayLabel.text = " "
    }
    @IBAction func TotalButton(_ sender: UIButton) {
        numSt = String (displayLabel.text!)
        if (numSt.first == " ") {
            numSt.remove(at: numSt.startIndex)
        }
        number2 = Double (numSt)!
        switch sign {
            case "/":
                number1 /= number2
                number1 = Double(round(100000 * number1) / 100000)
            case "*":
                number1 *= number2
                number1 = Double(round(100000 * number1) / 100000)
            case "-":
                number1 -= number2
                number1 = Double(round(100000 * number1) / 100000)
            case "+":
                number1 += number2
                number1 = Double(round(100000 * number1) / 100000)
            case "%":
                number1.formTruncatingRemainder(dividingBy: number2)
                number1 = Double(round(100000 * number1) / 100000)
            default:
                number1 += 0
        }
        if (String (number1).contains(".0") && String (number1).last == "0") {
            displayLabel.text = "\(Int (number1))"
        }
        else if ((number1 == 0 || number2 == 0) && sign == "/") {
            displayLabel.text = "Error"
        }
        else {
            displayLabel.text = "\(number1)"
        }
        eraseNum = true
    }
    @IBAction func OneButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "1"
            eraseNum = false
        }
        else {
            displayLabel.text! += "1"
        }
    }
    @IBAction func TwoButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "2"
            eraseNum = false
        }
        else {
            displayLabel.text! += "2"
        }
    }
    @IBAction func ThreeButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "3"
            eraseNum = false
        }
        else {
            displayLabel.text! += "3"
        }
    }
    @IBAction func FourButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "4"
            eraseNum = false
        }
        else {
            displayLabel.text! += "4"
        }
    }
    @IBAction func FiveButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "5"
            eraseNum = false
        }
        else {
            displayLabel.text! += "5"
        }
    }
    @IBAction func SixButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "6"
            eraseNum = false
        }
        else {
            displayLabel.text! += "6"
        }
    }
    @IBAction func SevenButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "7"
            eraseNum = false
        }
        else {
            displayLabel.text! += "7"
        }
    }
    @IBAction func EightButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "8"
            eraseNum = false
        }
        else {
            displayLabel.text! += "8"
        }
    }
    @IBAction func NineButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "9"
            eraseNum = false
        }
        else {
            displayLabel.text! += "9"
        }
    }
    @IBAction func ZeroButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "0"
            eraseNum = false
        }
        else {
            displayLabel.text! += "0"
        }
    }
    @IBAction func DecimalButton(_ sender: UIButton) {
        if (eraseNum == true) {
            displayLabel.text = "0."
            eraseNum = false
        }
        else {
            displayLabel.text! += "."
        }
    }
}

