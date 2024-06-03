//
//  Structs.swift
//  SwiftIntroCMD
//
//  Created by Gabriel on 3/6/24.
//

import Foundation

struct ExampleStruct {
    var name: String
    var age: Int
}


// Class run

class Structs {
    static func runExercises() {
        var exampleStruct: ExampleStruct = ExampleStruct(name: "Gabriel", age: 28)
        print("Example struct age \(exampleStruct.age)")
    }
}
