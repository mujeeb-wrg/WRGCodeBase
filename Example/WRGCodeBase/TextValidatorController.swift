//
//  TextValidatorController.swift
//  WRGCodeBase_Example
//
//  Created by Mujeeb R. O on 15/11/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import WRGCodeBase

class TextValidatorController : UIViewController{
    
    @IBOutlet weak var textfield_1: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func didClickValidate(_ sender: Any) {
        let validator = TextValidator(title: "Validation Test", viewController: self)
        validator.isFieldNotEmpty(field: textfield_1, message: "Please enter a value")
//        validator.isNotEmpty(text: textfield_1.text!, message: "Message!")
        
    }
    
}
