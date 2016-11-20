//
//  RoundGradientLabel.swift
//  auroralert2
//
//  Created by Jessica Kasson on 11/19/16.
//  Copyright © 2016 Jessica Kasson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundGradientView : UIView {
    
    var lightGray: UIColor = UIColor(red: 0x2F/0xFF, green: 0x2F/0xFF, blue: 0x2F/0xFF, alpha: 1.0)
    var darkrGray: UIColor = UIColor(red: 0x1F/0xFF, green: 0x1F/0xFF, blue: 0x1F/0xFF, alpha: 1.0)
    
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//        
//        self.layer.backgroundColor = UIColor.clearColor().CGColor
//        let gradientLayer: CAGradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.bounds
//        gradientLayer.colors = [darkrGray.CGColor, lightGray.CGColor, darkrGray.CGColor]
//        
//        self.layer.cornerRadius = 4.0
//        self.layer.borderColor = UIColor.blackColor().CGColor
//        self.layer.insertSublayer(gradientLayer, below: self.layer)
//        self.clipsToBounds = true
//    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        self.layer.backgroundColor = UIColor.clearColor().CGColor
//        let gradientLayer: CAGradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.bounds
//        gradientLayer.colors = [darkrGray, lightGray, darkrGray]
//        
//        self.layer.cornerRadius = 4.0
//        self.layer.borderColor = UIColor.blackColor().CGColor
//        self.layer.insertSublayer(gradientLayer, below: self.layer)
//        self.clipsToBounds = true
//    }
    
    override func drawRect(rect: CGRect) {
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.backgroundColor = UIColor.blackColor().CGColor
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [darkrGray.CGColor, lightGray.CGColor, darkrGray.CGColor]
        gradientLayer.cornerRadius = 6.0
        gradientLayer.masksToBounds = true
        gradientLayer.borderColor = UIColor.blackColor().CGColor
        self.layer.backgroundColor = UIColor.blackColor().CGColor
        self.layer.borderColor = UIColor.blackColor().CGColor
        self.layer.insertSublayer(gradientLayer, atIndex: 0)
        self.layer.cornerRadius = 6.0
        self.clipsToBounds = true
        self.layer.masksToBounds = true

        //self.insertSubview(newView, atIndex: 0)
        
        super.drawRect(rect)
    }
    
    
}