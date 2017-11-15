//
//  Validator.swift
//  WRGCodeBase
//
//  Created by Mujeeb R. O on 16/08/17.
//  Copyright © 2017 White Rabbit. All rights reserved.
//  This class contains methods for validating the text data

import UIKit

open class TextValidator: NSObject {
    
    fileprivate var responderTextField:UITextField?
    var title:String? = nil
    var viewController:UIViewController?
    
    
    /// This constructor can be used if the alert should be shown on failing validation.
    ///
    ///  - Parameters:
    ///   - title: Title for the alert dialog
    ///   - viewController:(optional) ViewController to show the alert on
    public init(title:String , viewController:UIViewController?) {
        self.title = title
        self.viewController = viewController
    }
    
    
    
    /// This constructor should be used if no need to show the validation failed alert.
    public override init() {
        
    }
    
    
    /// Checks the text in the UITextField is a valid email id
    ///
    /// - Parameter emailField: textfield to be checked
    /// - Returns: true -> if text is a valid email, false -> if not
    public func isValidEmailField(emailField:UITextField) -> Bool {
        responderTextField = emailField
        if(isValidEmail(email: emailField.text!)){
            return true
        }
        return false
    }
    
    
    /// Checks the provided text is a valid email or not
    ///
    /// - Parameters:
    ///   - email: email address to be validated
    ///   - shouldShowErrorMessage: true -> to show the failure message, false -> not to show
    /// - Returns: true -> if text is a valid email, false -> if not
    public func isValidEmail(email:String, shouldShowErrorMessage:Bool = true) -> Bool {
        if !email.isEmpty {
            let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
            if(NSPredicate(format:"SELF MATCHES %@", emailRegex).evaluate(with: email)){
                return true
            }
        }
        if(shouldShowErrorMessage){
            showValidationError(withMessage: "Please enter valid email address!")
        }
        return false
    }
    
    
    /// To check wether the provided text is empty or not
    ///
    /// - Parameters:
    ///   - text: text to be checked
    ///   - message: message to be showed if validation fails.
    /// - Returns: true -> if validation success, false -> on fail
    public func isNotEmpty(text:String, message:String? = nil) -> Bool {
        if(!text.isEmpty) {
            return true
        }
        if(message != nil){
            showValidationError(withMessage:message!)
        }
        return false
    }
    
    
    /// To check wether the text in provided textfield is empty or not
    ///
    /// - Parameters:
    ///   - field: textfield to be validated
    ///   - message: validation fail message
    /// - Returns: true -> on success, false -> on failure
    public func isFieldNotEmpty(field:UITextField, message:String) -> Bool {
        responderTextField = field
        if(isNotEmpty(text: field.text!, message: message)){
            return true
        }
        return false
    }
    
    
    
    /// To check the value of two textfield matches
    ///
    /// - Parameters:
    ///   - textField1: textField1
    ///   - textField2: textField2
    ///   - message: validation failure message
    /// - Returns: true -> on success
    public func isFieldMatches(textField1:UITextField, textField2:UITextField, message:String) -> Bool {
        responderTextField = textField2
        if(textField1.text == textField2.text){
            return true
        }
        showValidationError(withMessage: message)
        return false
    }
    
    
    /// To check the provided text have minimumLength
    ///
    /// - Parameters:
    ///   - text: text to be validated
    ///   - minimumLength: minimum length
    ///   - message: fail message
    /// - Returns:  true -> on success
    public func hasMiniumLengthFor(text:String, minimumLength:Int,message:String?) -> Bool {
        if(text.count >= minimumLength){
            return true
        }
        showValidationError(withMessage: message!)
        return false
    }
    
    
    
    /// To check the text in provided textfield have minimumLength
    ///
    /// - Parameters:
    ///   - field: textfield to be validated
    ///   - minimumLength: minimum length
    ///   - message: fail message
    /// - Returns: true -> on success
    public func hasMiniumLengthFor(field:UITextField, minimumLength:Int, message:String?) -> Bool {
        responderTextField = field
        if(hasMiniumLengthFor(text: field.text!, minimumLength: minimumLength, message: message)) {
            return true
        }
        return false
    }
    
    func isLengthOf(field:UITextField,is length:Int, message:String) -> Bool {
        responderTextField = field
        return isLengthOf(text: field.text, is: length, message: message)
    }
    
    func isLengthOf(text:String,is length:Int, message:String) -> Bool {
        if text.count == length {
            return true
        }
        showValidationError(withMessage: message)
        return false
    }
    
    
    fileprivate func showValidationError(withMessage Message: String) {
        if(viewController == nil) {
            return
        }
        let alert = UIAlertController(title: title, message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default){
            alert in
            
            guard let textfield = self.responderTextField else{
                return
            }
            textfield.becomeFirstResponder()
        })
        
        viewController!.present(alert, animated: true)
    }
    
}
