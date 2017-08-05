//
//  GradientView.swift
//  Smack
//
//  Created by Jeremy Clerico on 05/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit

//Overview:
//IBDesignable-  which means its going to show changes in storyboard
//IBInspectable variables - that we will be able to change inside a storyboard dynamically.
//Override func layoutSubviews() - called whenever we change one of our variables in the IBInspectables
//Inside layoutSubviews() - Create a layer, set the layer colours, start and end points and the frame, and insert the sublayer into the UIView itself

@IBDesignable

class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            //Triggers layout update on next update cycle.
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            //Triggers layout update on next update cycle.
            self.setNeedsLayout()
        }
    }

    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0) //0=first layer
    }
    
}
