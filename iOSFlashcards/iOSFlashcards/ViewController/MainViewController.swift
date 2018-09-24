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
    
    @IBOutlet weak var generateFlashCardsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set gradient background color for the main view controller
        view.setGradientBackground(colorOne: Colors.darkerCoral, colorTwo: Colors.coral)
//        generateFlashCardsButton.setGradientBackground(colorOne: Colors.darkRed, colorTwo: Colors.lightOrange)
        
        // set rounded corners for the button on the main page
        self.generateFlashCardsButton.layer.cornerRadius = 8
        
        
        
    }
}
