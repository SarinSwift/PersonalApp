//
//  Question.swift
//  iOSFlashcards
//
//  Created by Sarin Swift on 9/9/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import Foundation

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
        let thirdQuestion = Question(question: "What's the output of the following code: print type(type(int))", possibleAnswers: ["type 'int'", "type 'type'", "Error", "0"], correctAnswerIndex: 1)
        let fourthQuestion = Question(question: "What is called when a function is defined inside a class?", possibleAnswers: ["Module", "Class", "Another Function", "Method"], correctAnswerIndex: 3)
        let fifthQusetion = Question(question: "Suppose list1 is [3, 4, 5, 20, 5, 25, 1, 3], what is list1 after list1.pop(1)?", possibleAnswers: ["[3, 4, 5, 20, 5, 25, 1, 3]", "[1, 3, 3, 4, 5, 5, 20, 25]", "[3, 5, 20, 5, 25, 1, 3]", "[1, 3, 4, 5, 20, 5, 25]"], correctAnswerIndex: 2)
        let sixthQuestion = Question(question: "What's the output of the following code: print 9//2", possibleAnswers: ["4.5", "4.0", "4", "Error"], correctAnswerIndex: 2)
        let seventhQuestion = Question(question: "What's the output of the following code: print 'Hello World'[::-1]", possibleAnswers: ["dlroW olleH", "Hello Worl", "d", "Error"], correctAnswerIndex: 0)
        let eighthQuestion = Question(question: "Which module in Python supports regular expressions?", possibleAnswers: ["re", "regex", "pyregex", "None of the above"], correctAnswerIndex: 0)
        
        return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion, fifthQusetion ,sixthQuestion, seventhQuestion, eighthQuestion]
    }
    
    static var cPlusPlus: [Question] {
        let firstQuestion = Question(question: "Pick the odd one out", possibleAnswers: ["array type", "character type", "boolean type", "integer type"], correctAnswerIndex: 0)
        let secondQuestion = Question(question: "Which data type is used to represent the absence of parameters?", possibleAnswers: ["int", "short", "void", "float"], correctAnswerIndex: 2)
        let thirdQuestion = Question(question: "What does an escape code represent?", possibleAnswers: ["alert", "backslash", "tab", "form feed"], correctAnswerIndex: 0)
        let fourthQuestion = Question(question: "Which of the following statements are true?: int f(float)", possibleAnswers: ["f is a function taking an argument of type int and returning a floating point number", "f is a function taking an argument of type float and returning an integer", "f is a function of type float", "none of the mentioned"], correctAnswerIndex: 1)
        let fifthQusetion = Question(question: "When a language has the capability to produce new data type mean, it can be called as", possibleAnswers: ["overloaded", "extensible", "encapsulated", "reprehensible"], correctAnswerIndex: 1)
        return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion, fifthQusetion]
    }
    
    static var dataStructures: [Question] {
        let firstQuestion = Question(question: "Process of inserting an element in stack is called _______", possibleAnswers: ["create", "push", "evaluation", "pop"], correctAnswerIndex: 1)
        let secondQuestion = Question(question: "In a stack, if a user tries to remove an element from empty stack it is called _________", possibleAnswers: ["underflow", "empty collection", "overflow", "garbage collection"], correctAnswerIndex: 0)
        let thirdQuestion = Question(question: "Entries in a stack are “ordered”. What is the meaning of this statement?", possibleAnswers: ["A collection of stacks is sortable", "Stack entries may be compared with the ‘<‘ operation", "The entries are stored in a linked list", "There is a Sequential entry that is one by one"], correctAnswerIndex: 3)
        return [firstQuestion, secondQuestion, thirdQuestion]
    }
    
    static var oop: [Question] {
        let firstQuestion = Question(question: "Class is pass by _______", possibleAnswers: ["value", "reference", "value or reference, depending on program", "copy"], correctAnswerIndex: 1)
        let secondQuestion = Question(question: "Size of a class is :", possibleAnswers: ["Sum of size of all the variables declared inside the class", "Sum of size of all the variables along with inherited variables in the class", "Size of largest size of variable", "Classes doesn’t have any size"], correctAnswerIndex: 3)
        let thirdQuestion = Question(question: "Class with main() function can be inherited (True/False)", possibleAnswers: ["true", "false", "I don't know", "I will know"], correctAnswerIndex: 0)
        let fourthQuestion = Question(question: "Which of the following pairs are similar?", possibleAnswers: ["Class and object", "Class and structure", "Structure and object", "Structure and functions"], correctAnswerIndex: 1)
        return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion]
    }
    
    static var html: [Question] {
        let firstQuestion = Question(question: "Choose the correct tag for largest heading in HTML.", possibleAnswers: ["h6", "heading", "h1", "head"], correctAnswerIndex: 2)
        let secondQuestion = Question(question: "Which of the following are table tags?", possibleAnswers: ["table, thead, tr, td", "colspan, table, tr", "table, tt, tr, td", "none of the mentioned"], correctAnswerIndex: 0)
        let thirdQuestion = Question(question: "Choose the correct XHTML for width attribute and its value.", possibleAnswers: ["width=80", "width='80'", "WIDTH='80'", "WIDTH=80"], correctAnswerIndex: 1)
        let fourthQuestion = Question(question: "What is the use of “defer” attribute?", possibleAnswers: ["It defers rendering of html page", "It defers script execution until the page has been rendered", "It defers rendering of css attributes", "None of mentioned"], correctAnswerIndex: 1)
        let fifthQusetion = Question(question: "Which of the following is used to read a HTML page and render it?", possibleAnswers: ["Web browser", "Web server", "Web matrix", "None of the mentioned"], correctAnswerIndex: 0)
        let sixthQuestion = Question(question: "IDE stands for", possibleAnswers: ["Internet Development Environment", "Integrated Development Environment", "Intelligent Development Environment", "None of the mentioned"], correctAnswerIndex: 1)
        let seventhQuestion = Question(question: "Swapping images in dreamweaver is best if", possibleAnswers: ["The images are the same “Mime” type", "The images are the same color", "The images are the same size", "You use the “Constrain” tool"], correctAnswerIndex: 2)
        return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion, fifthQusetion, sixthQuestion, seventhQuestion]
    }
    
    static var dataScience: [Question] {
        let firstQuestion = Question(question: "Point out the correct statement:", possibleAnswers: ["Raw data is original source of data", "Preprocessed data is original source of data", "Raw data is the data obtained after processing steps", "None of the Mentioned"], correctAnswerIndex: 0)
        let secondQuestion = Question(question: "Point out the wrong statement:", possibleAnswers: ["Merging concerns combining datasets on the same observations to produce a result with more variables", "Data visualization is the organization of information according to preset specifications", "Subsetting can be used to select and exclude variables and observations", "All of the Mentioned"], correctAnswerIndex: 1)
        let thirdQuestion = Question(question: "Which of the following is characteristic of Raw Data ?", possibleAnswers: ["Data is ready for analysis", "Original version of data", "Easy to use for data analysis", "None of the Mentioned"], correctAnswerIndex: 1)
        let fourthQuestion = Question(question: "Which of the following is characteristic of Processed Data ?", possibleAnswers: ["Hard to use for data analysis", "Data is not ready for analysis", "All steps should be noted", "None of the mentioned"], correctAnswerIndex: 2)
        return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion]
    }
}
