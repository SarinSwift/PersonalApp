//
//  MainViewController.swift
//  iOSFlashcards
//
//  Created by Rinni Swift on 9/23/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var selectedCourse: Courses?
    var flashcardsGenres = [Courses(courseName: "iOS", questions: Question.ios),Courses(courseName: "python", questions: Question.python),Courses(courseName:"DJango", questions: nil),Courses(courseName: "C++", questions: nil),Courses(courseName: "coming soon...", questions: nil),Courses(courseName: "coming soon...", questions: nil),Courses(courseName: "coming soon...", questions: nil)]
    
//    @IBOutlet weak var generateFlashCardsButton: UIButton!
    
    // exit to come to this view controller
    @IBAction func unwindToMainViewController(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        let width = view.frame.size.width / 4
        let height = view.frame.size.height / 4
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: height, height: width)
        
        collectionView.delegate = self
        collectionView.dataSource = self
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
//        collectionView.register(CourseCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        

        
        // set gradient background color for the main view controller
//        view.setGradientBackground(colorOne: Colors.darkerCoral, colorTwo: Colors.coral)
//        generateFlashCardsButton.setGradientBackground(colorOne: Colors.darkRed, colorTwo: Colors.lightOrange)
        
        
        // set rounded corners for the button on the main page
//        self.generateFlashCardsButton.layer.cornerRadius = 8
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeToQuestions" {
            let destination = segue.destination as! ViewController
            let cell = sender as! CourseCell
            
            let row = collectionView.indexPath(for: cell)!.row
            destination.course = flashcardsGenres[row]
        }
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flashcardsGenres.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as? CourseCell {
            
            cell.setGradientBackground(colorOne: Colors.yellow, colorTwo: Colors.lightOrange)
            cell.displayCourseNameInCell(name: flashcardsGenres[indexPath.item])
            return cell
        }
        return CourseCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(123)
        
        navigationController?.pushViewController(ViewController(), animated: true)
        
//        let name = flashcardsGenres[indexPath.row]
    }
    

    
    
}
