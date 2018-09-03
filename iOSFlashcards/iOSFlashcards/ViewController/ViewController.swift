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
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Questions = [Question(Question: "WHats up?", Answers: ["aaa", "bbb", "ccc", "ddd"], Answer: 0), Question(Question: "WHatsdsfdsfc up?", Answers: ["aaa", "bbb", "ccc", "ddd"], Answer: 1), Question(Question: "WHatsyolooo up?", Answers: ["aaa", "bbb", "ccc", "ddd"], Answer: 2), Question(Question: "WHatsapppp up?", Answers: ["aaa", "bbb", "ccc", "ddd"], Answer: 3)]

        
        
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
            NSLog("Done!")
        }
    }
  
    @IBAction func Btn1(_ sender: UIButton) {
        if AnswerNumber == 0 {
            PickQuestion()
        } else {
            NSLog("Wrong!")
        }
        
    }
    
    @IBAction func Btn2(_ sender: UIButton) {
        if AnswerNumber == 1 {
            PickQuestion()
        } else {
            NSLog("Wrong!")
        }
    }
    
    @IBAction func Btn3(_ sender: UIButton) {
        if AnswerNumber == 2 {
            PickQuestion()
        } else {
            NSLog("Wrong!")
        }
    }
    
    @IBAction func Btn4(_ sender: UIButton) {
        if AnswerNumber == 3 {
            PickQuestion()
        } else {
            NSLog("Wrong!")
        }
    }
    
}
 




