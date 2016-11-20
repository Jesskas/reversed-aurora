//
//  UlineBorderLabel.swift
//  auroralert2
//
//  Created by Jessica Kasson on 11/19/16.
//  Copyright © 2016 Jessica Kasson. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class UlineBorderLabel : UILabel {
    
    @IBInspectable var ulineColor: UIColor = UIColor.lightGrayColor() {
        didSet {
            let border = CALayer()
            border.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1)
            border.backgroundColor = ulineColor.CGColor
            
            self.layer.addSublayer(border)
        }
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}