//
//  Question.swift
//  iOSFlashcards
//
//  Created by Sarin Swift on 9/9/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import Foundation

//struct Person {
//    var firstName: String
//    var lastName: String
//    var fullName: String {
//        return firstName + lastName
//    }
//}

struct Question {
    var question: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
    // computed property
    static var ios: [Question] {
        let firstQuestion = Question(question: "What DON'T variables do", possibleAnswers: ["Stores data", "A data store that can have its value changed whenever", "Variables work the same as constants", "You make a variable using the var keyword"], correctAnswerIndex: 2)
        let secondQuestion = Question(question: "All of these are data types in Swift, except for...", possibleAnswers: ["Strings", "Boolean", "Int", "Complex numbers"], correctAnswerIndex: 3)
        let thirdQuestion = Question(question: "The following is wrong about strings", possibleAnswers: ["Contains double quotes around them", "You can combine strings using the concatenation operator (+)", "Multiline string literals are enclosed in three double quotation marks", "A string interpolation is a series of characters enclosed in quotes."], correctAnswerIndex: 3)
        let fourthQuestion = Question(question: "Which is correct?", possibleAnswers: ["A while statement executes a block of code once.", "Loop statements allow a block of code to be executed repeatedly, depending on the conditions specified in the loop.", "An if statement is used for executing code based on the evaluation of only one condition.", "Simple statements are used to control the flow of execution in a program"], correctAnswerIndex: 1)
        return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion]
    }
    
    static var python: [Question] {
        let firstQuestion = Question(question: "All these are true about lists and tuples except...", possibleAnswers: ["lists are slower than tuples", "lists are mutable", "tuples are mutable", "the syntax of lists are parenthesis"], correctAnswerIndex: 2)
        let secondQuestion = Question(question: "The following is correct except...", possibleAnswers: ["methods are called using dot notation","a function is a chunk of code allowed for reuse", "methods are chunks of code inside an object", "functions are called using dot notations"], correctAnswerIndex: 3)
        return [firstQuestion, secondQuestion]
    }
}
