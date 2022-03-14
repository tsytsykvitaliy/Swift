//
//  ViewController.swift
//  Tsytsyk_SearchApp
//
//  Created by Student on 3/3/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var pictures = [["cat", "elephant", "fox", "lion", "parrot"],
                    ["acropolis", "golden_gate_bridge", "louvre", "statue_of_liberty", "stonehenge"],
                    ["fog", "lightning", "rain", "rainbow", "snow"]]
    var animals_keywords = ["animal", "wild", "pet", "cute", "zoo"]
    var landmarks_keywords = ["landmark", "tourism", "travel", "sightseeing", "wonder"]
    var weather_keywords = ["weather", "nature", "temperature", "sky", "precipitation"]
    var topics_array = [["Cats have been domesticated and kept as pets for thousands of years.", "Elephants are the biggest land animals in the world.", "Foxes often are portrayed as cunning and sly.", "Lions are known as the \"King of the Jungle\"", "Some parrots can learn to mimic human speech and talk"],
                        ["Acropolis is located in Athens, Greece.", "Golden Gate Bridge is located in San Francisco, U.S.A.", "Louvre is located in Paris, France", "Statue of Liberty is located in New York, U.S.A.", "Stonehenge is located in Wiltshire, England (UK)."],
                        ["Fog occurs when the difference between air temperature and dew point is less than 2.5C.", "Lightning occurs when negative electons in the bottom of the cloud are attracted to protons in the ground.", "Rain falls when water droplets in clouds get too heavy to stay suspended in them.", "Rainbows occur when the sun is scattered by water droplets through refraction.", "Snow forms ehrn the atmospheric tempreture is at or below 0C and there is a minimum amount of moisture in the air."]]
    var topic = 0
    var i = 0
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var showPrevImagesBtn: UIButton!
    
    @IBOutlet weak var showNextImagesBtn: UIButton!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPrevImagesBtn.isEnabled = false
        showNextImagesBtn.isEnabled = true
        searchButton.isEnabled = false
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        resultImage.image = UIImage (named: "search")
    }
    
    @IBAction func searchQueryChanged(_ sender: UITextField) {
        let textEntered = searchTextField.text!
        if (textEntered.isEmpty) {
            searchButton.isEnabled = false
        }
        else {
            searchButton.isEnabled = true
        }
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        showPrevImagesBtn.isHidden = false
        showNextImagesBtn.isHidden = false
        if (animals_keywords.contains(searchTextField.text!)) {
                topic = 1
        }
        else if (landmarks_keywords.contains(searchTextField.text!)) {
                topic = 2
        }
        else if (weather_keywords.contains(searchTextField.text!)) {
                topic = 3
        }
        else {
            resultImage.image = UIImage (named: "not_found")
            showPrevImagesBtn.isHidden = true
            showNextImagesBtn.isHidden = true
            i = 0
            topic = 4
            
        }
        switch topic {
        case 1:
            resultImage.image = UIImage (named: pictures[0][i])
            topicInfoText.text = topics_array[0][i]
        case 2:
            resultImage.image = UIImage (named: pictures[1][i])
            topicInfoText.text = topics_array[1][i]
        case 3:
            resultImage.image = UIImage (named: pictures[2][i])
            topicInfoText.text = topics_array[2][i]
        case 4:
            break
        default:
            break
        }
    }
    
    @IBAction func prevImageAction(_ sender: UIButton) {
        showNextImagesBtn.isEnabled = true
        switch topic {
        case 1:
            if (i > 0 && i <= 4) {
                i -= 1
                resultImage.image = UIImage (named: pictures[0][i])
                topicInfoText.text = topics_array[0][i]
            }
        case 2:
            if (i > 0 && i <= 4) {
                i -= 1
                resultImage.image = UIImage (named: pictures[1][i])
                topicInfoText.text = topics_array[1][i]
            }
        case 3:
            if (i > 0 && i <= 4) {
                i -= 1
                resultImage.image = UIImage (named: pictures[2][i])
                topicInfoText.text = topics_array[2][i]
            }
        default:
            break
        }
        if (resultImage.image == UIImage (named: pictures[0][0]) ||
            resultImage.image == UIImage (named: pictures[1][0]) ||
            resultImage.image == UIImage (named: pictures[2][0])) {
            showPrevImagesBtn.isEnabled = false
        }
    }
    
    @IBAction func nextImageAction(_ sender: UIButton) {
        showPrevImagesBtn.isEnabled = true
        switch topic {
        case 1:
            if (i >= 0 && i < 4) {
                i += 1
                resultImage.image = UIImage (named: pictures[0][i])
                topicInfoText.text = topics_array[0][i]
            }
        case 2:
            if (i >= 0 && i < 4) {
                i += 1
                resultImage.image = UIImage (named: pictures[1][i])
                topicInfoText.text = topics_array[1][i]
            }
        case 3:
            if (i >= 0 && i < 4) {
                i += 1
                resultImage.image = UIImage (named: pictures[2][i])
                topicInfoText.text = topics_array[2][i]
            }
        default:
            break
        }
        if (resultImage.image == UIImage (named: pictures[0][4]) ||
            resultImage.image == UIImage (named: pictures[1][4]) ||
            resultImage.image == UIImage (named: pictures[2][4])) {
            showNextImagesBtn.isEnabled = false
        }
    }
    
    @IBAction func resetButtonAction(_ sender: UIButton) {
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        resultImage.image = UIImage (named: "search")
        searchTextField.text = ""
        searchButton.isEnabled = false
        topicInfoText.text = ""
        topic = 0
        i = 0
    }
}

