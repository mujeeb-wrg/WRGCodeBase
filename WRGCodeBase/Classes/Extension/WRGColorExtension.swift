//
//  WRGColorExtension.swift
//  FBSnapshotTestCase
//
//  Created by Mujeeb R. O on 12/10/17.
//

import UIKit

extension UIColor {
    public convenience init(hex: String, alpha: Float = 1.0){
        var scanner = Scanner(string:hex)
        var color:UInt32 = 0;
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = CGFloat(Float(Int(color >> 16) & mask)/255.0)
        let g = CGFloat(Float(Int(color >> 8) & mask)/255.0)
        let b = CGFloat(Float(Int(color) & mask)/255.0)
        self.init(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
    
    public convenience init(hex: String){
        self.init(hex: hex, alpha: 1.0)
    } 
}
