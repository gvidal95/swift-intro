//
//  Classes.swift
//  SwiftIntroCMD
//
//  Created by Gabriel on 3/6/24.
//

import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greet() {
        print("Hello \(self.name)")
    }
}
