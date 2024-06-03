//
//  Functions.swift
//  SwiftIntroCMD
//
//  Created by Gabriel on 3/6/24.
//

import Foundation

class Functions {
    static func runExercises() {
        print(greet(name: "Gabriel"))
        
    }
}

// Functions

func greet (name: String) -> String {
    let greeting = "Hello \(name) !"
    return greeting
}
