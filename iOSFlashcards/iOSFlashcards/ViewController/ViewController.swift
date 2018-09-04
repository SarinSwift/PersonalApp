//
//  ViewController.swift
//  iOSFlashcards
//
//  Created by Sarin Swift on 9/3/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

struct Question {
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
}

class ViewController: UIViewController {
    
    @IBOutlet var Button: [UIButton]!
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isHidden = true
        nextButton.isEnabled = false
        
        Questions = [Question(Question: "What DON'T variables do", Answers: ["Stores data", "A data store that can have its value changed whenever", "Variables work the same as constants", "You make a variable using the var keyword"], Answer: 2),
        Question(Question: "All of these are data types in Swift, except for...", Answers: ["Strings", "Boolean", "Int", "Complex numbers"], Answer: 3),
        Question(Question: "The following is wrong about strings", Answers: ["Contains double quotes around them", "You can combine strings using the concatenation operator (+)", "Multiline string literals are enclosed in three double quotation marks", "A string interpolation is a series of characters enclosed in quotes."], Answer: 3),
        Question(Question: "Which is correct?", Answers: ["A while statement executes a block of code once.", "Loop statements allow a block of code to be executed repeatedly, depending on the conditions specified in the loop.", "An if statement is used for executing code based on the evaluation of only one condition.", "Simple statements are used to control the flow of execution in a program"], Answer: 1)]

        PickQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion() {
        if Questions.count > 0 {
            QNumber = Int(arc4random_uniform(UInt32(Questions.count)))
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Button.count {
                Button[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            
            Questions.remove(at: QNumber)
        } else {
            
            // write code for what you want it to do after all questions are completed.
            NSLog("Completed all questions!")
        }
        
    }
  
    @IBAction func checkingButtons(_ sender: UIButton) {
        if AnswerNumber == 0 {
            print("correct")
            sender.backgroundColor = .green
            PickQuestion()
            
        } else if AnswerNumber == 1 {
            print("correct")
            sender.backgroundColor = .green
            PickQuestion()
        } else if AnswerNumber == 2 {
            print("correct")
            sender.backgroundColor = .green
            PickQuestion()
        } else if AnswerNumber == 3 {
            print("correct")
            sender.backgroundColor = .green
            PickQuestion()
        } else {
            NSLog("Wrong!")
        }
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
    }
}
 




