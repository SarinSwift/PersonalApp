//
//  ViewController.swift
//  iOSFlashcards
//
//  Created by Sarin Swift on 9/3/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Instance Variables
    var questions: [Question]!
    var currentQuestion: Question!
    var course: Courses?
    
    // MARK: - Subviews
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup instance variables
        questions = course?.questions //createAllQuestions()
        
        // setup subviews
        nextButton.isHidden = true
        nextButton.isEnabled = false
        
        // run the game
        pickQuestion()
        
        // set the gradient background color
        view.setGradientBackground(colorOne: Colors.darkerCoral, colorTwo: Colors.coral)
    }
    
    // MARK: - Private Methods
    
    func pickQuestion() {
        if questions.count > 0 {
            
            // set the current question
            let randomQuestionIndex = Int(arc4random_uniform(UInt32(questions.count)))
            currentQuestion = questions[randomQuestionIndex]
            
            // set subview text
            questionLabel.text = currentQuestion.question
            // enumerate return both the index and the buttons at that index so it can set the title of all 4 buttons
            for (index, button) in answerButtons.enumerated() {
                button.setTitle(currentQuestion.possibleAnswers[index], for: .normal)
            }
            
            // remove current question from array to not repeat questions
            questions.remove(at: randomQuestionIndex)
        } else {
            
            // TODO: write code for what you want it to do after all questions are completed.!!!!!!
            NSLog("Completed all questions!")
            
        }
    }
  
    // MARK: - Subview Actions
    @IBAction func btn1(_ sender: UIButton) {
        if currentQuestion.correctAnswerIndex == 0 {
            print("correct")
            sender.backgroundColor = UIColor(red: 119/255, green: 221/255, blue: 119/255, alpha: 1)
            nextButton.isHidden = false
            nextButton.isEnabled = true
        } else {
            NSLog("Wrong!")
            print("button 1")
            sender.layer.borderColor = UIColor(red: 227/255, green: 46/255, blue: 46/255, alpha: 1).cgColor
            sender.layer.borderWidth = 2
            sender.shake()
        }
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        if currentQuestion.correctAnswerIndex == 1 {
            print("correct")
            sender.backgroundColor = UIColor(red: 119/255, green: 221/255, blue: 119/255, alpha: 1)
            nextButton.isHidden = false
            nextButton.isEnabled = true
        } else {
            NSLog("Wrong!")
            sender.layer.borderColor = UIColor(red: 227/255, green: 46/255, blue: 46/255, alpha: 1).cgColor
            sender.layer.borderWidth = 2
            sender.shake()
        }
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        if currentQuestion.correctAnswerIndex == 2 {
            print("correct")
            sender.backgroundColor = UIColor(red: 119/255, green: 221/255, blue: 119/255, alpha: 1)
            nextButton.isHidden = false
            nextButton.isEnabled = true
        } else {
            NSLog("Wrong!")
            sender.layer.borderColor = UIColor(red: 227/255, green: 46/255, blue: 46/255, alpha: 1).cgColor
            sender.layer.borderWidth = 2
            sender.shake()
        }
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        if currentQuestion.correctAnswerIndex == 3 {
            print("correct")
            sender.backgroundColor = UIColor(red: 119/255, green: 221/255, blue: 119/255, alpha: 1)
            nextButton.isHidden = false
            nextButton.isEnabled = true
        } else {
            NSLog("Wrong!")
            sender.layer.borderColor = UIColor(red: 227/255, green: 46/255, blue: 46/255, alpha: 1).cgColor
            sender.layer.borderWidth = 2
            sender.shake()
        }
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        // get a new question
        pickQuestion()
        
        // reset all answer buttons
        for button in answerButtons {
            button.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
            button.layer.borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1).cgColor
        }
        
        // update next button
        nextButton.isEnabled = false
        nextButton.isHidden = true
        
    }
}

