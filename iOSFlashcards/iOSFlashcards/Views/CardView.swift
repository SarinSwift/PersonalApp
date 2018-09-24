//
//  CardView.swift
//  iOSFlashcards
//
//  Created by Sarin Swift on 9/4/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView: UIView {
    
    // MARK: - Instance Variables
    @IBInspectable var cornerradius: CGFloat = 10
    @IBInspectable var shadowOffSetWidth: CGFloat = 0
    @IBInspectable var shadowOffSetHeight: CGFloat = 5
    @IBInspectable var shadowColor: UIColor = UIColor.black
    @IBInspectable var shadowOpacity: CGFloat = 0.5
    
    // MARK: - View Lifecycle
    override func layoutSubviews() {

        layer.cornerRadius = cornerradius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = Float(shadowOpacity)
    }
    
}
