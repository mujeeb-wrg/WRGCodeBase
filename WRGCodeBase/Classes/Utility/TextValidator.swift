//
//  Validator.swift
//  WRGCodeBase
//
//  Created by Mujeeb R. O on 16/08/17.
//  Copyright © 2017 White Rabbit. All rights reserved.
//  This class contains methods for validating the text data

import UIKit

open class TextValidator: NSObject {
    
    var title:String? = nil
    var viewController:UIViewController?
    
    public init(title:String , viewController:UIViewController?) {
        self.title = title
        self.viewController = viewController
    }
    
    public convenience init(title:String) {
        self.init(title: title,viewController: nil)
    }
    
    public func isValidEmailField(emailField:UITextField) -> Bool {
        if(isValidEmail(email: emailField.text!))
        {
            return true
        }
        emailField.becomeFirstResponder()
        return false
    }
    
    public func isNotEmpty(text:String, message:String? = nil) -> Bool {
        if(!text.isEmpty)
        {
            return true
        }
        if(message != nil)
        {
            showValidationError(withMessage:message!)
        }
        return false
    }
    
    
    public func isFieldNotEmpty(field:UITextField, message:String) -> Bool {
        if(isNotEmpty(text: field.text!, message: message))
        {
            return true
        }
        field.becomeFirstResponder()
        return false
    }
    
    public func isValidEmail(email:String, shouldShowErrorMessage:Bool = true) -> Bool {
        if !email.isEmpty
        {
            let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
            if(NSPredicate(format:"SELF MATCHES %@", emailRegex).evaluate(with: email))
            {
                return true
            }
        }
        if(shouldShowErrorMessage)
        {
            showValidationError(withMessage: "Please enter valid email address!")
        }
        return false
    }
    
    public func isFieldMatches(textField1:UITextField, textField2:UITextField, message:String) -> Bool {
        if(textField1.text == textField2.text)
        {
            return true
        }
        showValidationError(withMessage: message)
        textField1.becomeFirstResponder()
        return false
    }
    
    public func hasMiniumLengthFor(text:String, minimumLength:Int,message:String?) -> Bool {
        if(text.count >= minimumLength)
        {
            return true
        }
        showValidationError(withMessage: message!)
        return false
    }
    
    public func hasMiniumLengthFor(field:UITextField, minimumLength:Int, message:String?) -> Bool {
        if(hasMiniumLengthFor(text: field.text!, minimumLength: minimumLength, message: message))
        {
            return true
        }
        field.becomeFirstResponder()
        return false
    }
    
    public func showValidationError(withMessage Message: String) {
        if(viewController == nil)
        {
            return
        }
        let alert = UIAlertController(title: title, message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        viewController!.present(alert, animated: true, completion: nil)
    }
    
}
