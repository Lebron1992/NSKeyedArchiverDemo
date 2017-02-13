//
//  ViewController.swift
//  数据存储
//
//  Created by 曾文志 on 13/02/2017.
//  Copyright © 2017 Lebron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        saveInstanceDemo()
    }
    
    private func saveInstanceDemo() {
        // 获取保存路径
        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
        let personPath = documentPath! + "/lebron.archive"
        
        // 实例化一个Person
        let lebron = Person(name: "lebron", age: 24)
        
        // 保存数据
        let success = NSKeyedArchiver.archiveRootObject(lebron, toFile: personPath)
        if success {
            print("保存成功")
        }
        
        // 读取数据
        if let person = NSKeyedUnarchiver.unarchiveObject(withFile: personPath) as? Person {
            print(person.name)
            print(person.age)
        }
    }
}

