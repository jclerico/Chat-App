//
//  CircleImage.swift
//  Smack
//
//  Created by Jeremy Clerico on 07/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit

@IBDesignable

class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
        
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
