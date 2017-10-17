//
//  Employee.swift
//  WRGCodeBase_Example
//
//  Created by Mujeeb R. O on 17/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class Employee: Codable {

    var  name:String
    var age:String
    var experience:Int
    
    init(name:String, age:String, experience:Int) {
        self.name = name
        self.age = age
        self.experience = experience
    }
    
    
}
