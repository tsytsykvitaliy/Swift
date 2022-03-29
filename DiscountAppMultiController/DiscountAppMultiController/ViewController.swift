//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by Student on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDiscountButtonClicked(_ sender: UIButton) {
        var amount = Double(amountOutlet.text!)
        var discountRate = Double(discountOutlet.text!)
        priceAfterDiscount = amount! - (amount! * discountRate! / 100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            // make ResultViewControler a destination
            var destination = segue.destination as! ResultViewController
            destination.amount = amountOutlet.text!
            destination.discountRate = discountOutlet.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
        }
    }
}

