//
//  JSONController.swift
//  WRGCodeBase_Example
//
//  Created by Mujeeb R. O on 17/10/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class JSONController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let json = encodeJson()!
        decode(json: json)
    }
    
    func decode(json:String)  {
        do {
            let employee = try JSONDecoder().decode(Employee.self, from:json.data(using:.utf8)!)
            print("---------Decoded Json--------")
            print("name : \(employee.name)")
            print("age : \(employee.age)")
            print("experience : \(employee.experience)")
        } catch  {
            
        }
    }
    
    func encodeJson() -> String? {
        let employee = Employee(name: "Mujeeb", age: "25", experience: 3)
        do {
            let jsonData = try JSONEncoder().encode(employee)
            let jsonString = String(data: jsonData, encoding: .utf8)!
            print("---------Generated Json--------")
            print(jsonString)
            return jsonString
        } catch  {
            print("Error")
        }
        return nil
    }

}
