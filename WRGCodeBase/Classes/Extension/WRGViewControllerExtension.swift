//
//  WRGViewControllerExtension.swift
//  FBSnapshotTestCase
//
//  Created by Mujeeb R. O on 04/10/17.
//

import UIKit

public extension UIViewController
{
    public func showAlert(title:String? = nil, message:String, handler: ((UIAlertAction) -> Swift.Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: handler))
        present(alert, animated: true, completion: nil)
    }
    
}

