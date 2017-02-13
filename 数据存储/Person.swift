//
//  Person.swift
//  数据存储
//
//  Created by 曾文志 on 13/02/2017.
//  Copyright © 2017 Lebron. All rights reserved.
//

import Foundation

class Person: NSObject, NSCoding {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
     required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as! String
        self.age = aDecoder.decodeInteger(forKey: "age")
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(age, forKey: "age")
        aCoder.encode(name, forKey: "name")
    }
}
