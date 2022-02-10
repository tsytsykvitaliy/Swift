//
//  ViewController.swift
//  corseDisplayApp
//
//  Created by Student on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBOutlet weak var CRN: UILabel!
    
    @IBOutlet weak var CRNname: UILabel!
    
    @IBOutlet weak var SemesterOffered: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
                   ["img02", "44643", "iOS", "Spring 2022"],
                   ["img03", "44656", "Streaming Data", "Summer 2022"]]
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(imageNumber)
        previousButton.isEnabled = false
    }
    @IBAction func previousButtonClicked(_ sender: Any) {
        imageNumber -= 1
        updateUI(imageNumber)
        nextButton.isEnabled = true
        if (imageNumber == 0) {
            previousButton.isEnabled = false
        }
    }
    @IBAction func nextButtonClicked(_ sender: Any) {
        imageNumber += 1
        updateUI(imageNumber)
        previousButton.isEnabled = true
        if (imageNumber == courses.count - 1) {
            nextButton.isEnabled = false
        }
    }
    func updateUI(_ imageNumber: Int) {
        imageDisplay.image = UIImage(named: courses[imageNumber][0])
        CRN.text = courses[imageNumber][1]
        CRNname.text = courses[imageNumber][2]
        SemesterOffered.text = courses[imageNumber][3]
    }
}
