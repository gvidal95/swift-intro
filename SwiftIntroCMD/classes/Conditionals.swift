//
//  Conditionals.swift
//  SwiftIntroCMD
//
//  Created by Gabriel on 12/2/23.
//

import Foundation

class Conditionals {
    static func runExercises() {
        // Conditions:
        let name = "Gabriel"

        print("hello \(name)")
        
        Conditionals.runSwitchExample()
        Conditionals.runGuardExample()
       
    }
    
//   Examples
    static func runSwitchExample() {
        
        print("=== SWITCH ===")
        let someCharacter = "Z"

        switch someCharacter {
        case "a", "A":
            print("The first letter of the alphabet")
        case "z", "Z":
            print("The last letter of the alphabet")
        default:
            print("Some other character")
        }

        let approximateCount = 0
        let countedThings = "moons orbiting Saturn"
        let naturalCount: String

        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        // 5 to 11
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
            
        }
        print("There are \(naturalCount) \(countedThings)")

        // Switch with tuples
        print("==Switch with tuples")

        let somePoint = (1, 0)

        switch somePoint {
        case (0, 0):
            print("\(somePoint) in at the origin")
        case (_, 0):
            print("\(somePoint) is on the x-axis")
        case (0, _):
            print("\(somePoint) is on the y-axis")
        case (-2...2, -2...2):
            print("\(somePoint) is inside the box")
        default:
            print("\(somePoint) is outside the box")
        }

        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y)")
        }

        let yetAnotherPoint = (1, -1)

        switch yetAnotherPoint {
        case let(x,y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let(x,y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("\(x), \(y) is just some arbitrary point")
            
        }

        // Compound cases
        let someCharacter2: Character = "e"

        switch someCharacter2 {
        case "a", "e", "i", "o", "u" :
            print("\(someCharacter2) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n",
            "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter2) is a consonant")
        default:
            print("\(someCharacter2) isn't a vowel or a consonant")
        }

        let stillAnotherPoint = (9, 0)
        switch stillAnotherPoint {
        case (let distance , 0), (0, let distance):
            print("On an axis, \(distance) from the origin")
        default:
            print("Not on an axis")
        }

        //falltrough
        let integerToDescribe = 5

        var description = "The number \(integerToDescribe) is"

        switch integerToDescribe {
        case 2, 5, 7, 11, 13, 17, 19:
            description += " a prime number and also"
        //  Dont break the case, and continue with the next condition
            fallthrough
           
        default:
            description += " an integer"
        }


        print(description)


    }
    
    static func runGuardExample() {
        print("=== GUARD ===")
        
//      Example 1
        func greet(person: [String: String]) {
            guard let name = person["name"] else {
                return
            }
            
            print("Hello \(name)")
            
            guard let location = person["location"] else {
                print("I hope the weather is nice near you")
                return
            }
            
            print("I hope the weather is nice in \(location)")
        }
        
        greet(person: ["name": "John"])
        greet(person: ["name" : "Jane", "location": "Cuenca"])
            
    }
}
