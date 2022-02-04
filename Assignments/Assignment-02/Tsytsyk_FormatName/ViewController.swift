//
//  ViewController.swift
//  Tsytsyk_FormatName
//
//  Created by Vitaliy Tsytsyk on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var detailsFullNameLabel: UILabel!
    
    @IBOutlet weak var detailsInitialsLabel: UILabel!
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        fullNameLabel.text = "\(lastNameTextField.text!), \(firstNameTextField.text!)"
        initialsLabel.text = ("\(firstNameTextField.text?.first?.uppercased() ?? "")\( lastNameTextField.text?.first?.uppercased() ?? "")")
        detailsLabel.isHidden = false
        detailsFullNameLabel.isHidden = false
        detailsInitialsLabel.isHidden = false
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        detailsLabel.isHidden = true
        detailsFullNameLabel.isHidden = true
        detailsInitialsLabel.isHidden = true
        firstNameTextField.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

