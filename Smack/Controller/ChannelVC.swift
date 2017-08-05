//
//  ChannelVC.swift
//  Smack
//
//  Created by Jeremy Clerico on 05/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //How much of the rear VC is shown when
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
        
    }
    
    
    
    
    
    
    
}
