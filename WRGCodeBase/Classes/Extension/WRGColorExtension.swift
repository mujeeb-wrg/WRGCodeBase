//
//  WRGColorExtension.swift
//  FBSnapshotTestCase
//
//  Created by Mujeeb R. O on 12/10/17.
//

import UIKit

public extension UIColor {
    
    
    /// Initialize using hex code
    ///
    /// - Parameters:
    ///   - hex: hex color code
    ///   - alpha: alpha
    public convenience init(hex: String, alpha: Float = 1.0){
        let purifiedHex = hex.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string:purifiedHex)
        var color:UInt32 = 0;
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = CGFloat(Float(Int(color >> 16) & mask)/255.0)
        let g = CGFloat(Float(Int(color >> 8) & mask)/255.0)
        let b = CGFloat(Float(Int(color) & mask)/255.0)
        self.init(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
    
    
    /// Initialize using hex code
    ///
    /// - Parameter hex: hex color code
    public convenience init(hex: String){
        self.init(hex: hex, alpha: 1.0)
    } 
}
