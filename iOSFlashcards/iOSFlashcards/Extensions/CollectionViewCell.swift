//
//  CollectionViewCell.swift
//  iOSFlashcards
//
//  Created by Rinni Swift on 9/25/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class CourseCell: UICollectionViewCell {
    
    @IBOutlet var courseName: UILabel!
    
    func displayCourseNameInCell(name: Courses) {
        courseName.text = name.courseName
    }
    
    
}
