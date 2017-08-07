//
//  AddChannelVC.swift
//  Smack
//
//  Created by Jeremy Clerico on 07/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        
    }
    
    
    @IBAction func createChannelPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedText = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
        chanDesc.attributedText = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
}
