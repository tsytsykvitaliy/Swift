//
//  ViewController.swift
//  Tsytsyk_WordGuess
//
//  Created by Student on 3/29/22.
//

import UIKit

class ViewController: UIViewController {

    var wordlist = [["BLUE", "Color of the sky"],
                    ["YELLOW", "Color of the wheat"],
                    ["RED", "Color of blood"],
                    ["WHITE", "Color of snow"],
                    ["GREEN", "Color of grass"]]
    var currentWord = ""
    var currentLetter = ""
    var lettersGuessed = ""
    var currentWordNumber = 0
    var tries = 0
    var revealedWord = ""
    var wordsGuessed = 0
    var wordsMissed = 0
    var wordsRemaining = 5
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentWord = wordlist[currentWordNumber][0]
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
        userGuessLabel.text = ""
        resetPlaceholders()
        wordsGuessedLabel.text! += "\(wordsGuessed)"
        wordsMissedLabel.text! += "\(wordsMissed)"
        wordsRemainingLabel.text! += "\(wordsRemaining)"
        totalWordsLabel.text! += "5"
        hintLabel.text = "HINT: \(wordlist[currentWordNumber][1])"
    }

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        revealedWord = ""
        currentLetter = guessLetterField.text!
        lettersGuessed += currentLetter
        
        for letter in currentWord {
            if lettersGuessed.contains("\(letter)") {
                revealedWord += ("\(letter)")
            }
            else {
                revealedWord += "_ "
            }
        }
        userGuessLabel.text = revealedWord
        guessLetterField.text = ""
        
        if userGuessLabel.text!.contains("_") == false {
            playAgainButton.isHidden = false
        }
        
        if revealedWord == wordlist[currentWordNumber][0] {
            tries += 1
            guessCountLabel.text = "You won! It took you \(tries) attempts to guess the word!"
            wordsGuessed += 1
            wordsGuessedLabel.text!.removeLast()
            wordsGuessedLabel.text! += "\(wordsGuessed)"
            tries = 0
            guessLetterButton.isEnabled = false
            wordsRemaining -= 1
        }
        else {
            tries += 1
            guessCountLabel.text = "You have made \(tries) guesses"
        }
        
        if tries == 10 {
            guessCountLabel.text = "You are all out of guesses. Try again?"
            userGuessLabel.text = ""
            wordsMissed += 1
            wordsMissedLabel.text!.removeLast()
            wordsMissedLabel.text! += "\(wordsMissed)"
            playAgainButton.isHidden = false
            lettersGuessed = ""
            hintLabel.text = "HINT: \(wordlist[currentWordNumber][1])"
        }
        
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        if tries == 10 {
            currentWord = wordlist[currentWordNumber][0]
            revealedWord = ""
            resetPlaceholders()
            playAgainButton.isHidden = true
            lettersGuessed = ""
            tries = 0
            guessCountLabel.text = "You have made \(tries) guesses"
            hintLabel.text = "HINT: \(wordlist[currentWordNumber][1])"
        }
        else {
            currentWordNumber += 1
            wordsRemainingLabel.text!.removeLast()
            wordsRemainingLabel.text! += "\(wordsRemaining)"
            userGuessLabel.text = ""
            
            playAgainButton.isHidden = true
            lettersGuessed = ""
            tries = 0
            guessCountLabel.text = "You have made \(tries) guesses"
            
            if currentWordNumber == wordlist.count {
                guessCountLabel.text = "Congratulations! You are done! Play again?"
                userGuessLabel.text = ""
                hintLabel.text = ""
                playAgainButton.isHidden = false
                currentWordNumber = 0
                wordsGuessed = 0
                wordsMissed = 0
                
                resetPlaceholders()
                wordsGuessedLabel.text! += "\(wordsGuessed)"
                wordsMissedLabel.text! += "\(wordsMissed)"
                wordsRemainingLabel.text! += "\(5 - currentWordNumber)"
                totalWordsLabel.text! += "5"
                hintLabel.text = "HINT: \(wordlist[currentWordNumber][1])"
                
            }
            else {
                currentWord = wordlist[currentWordNumber][0]
                hintLabel.text = "HINT: \(wordlist[currentWordNumber][1])"
                resetPlaceholders()
            }
        }
    }
    
    func resetPlaceholders() {
        for _ in currentWord {
            userGuessLabel.text! += "_ "
        }
    }
    
    @IBAction func letterChanged(_ sender: UITextField) {
        let letterEntered = guessLetterField.text!
        if (letterEntered.isEmpty) {
            guessLetterButton.isEnabled = false
        }
        else {
            guessLetterButton.isEnabled = true
        }
    }
}

