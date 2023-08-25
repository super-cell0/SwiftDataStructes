//
//  main.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

import Foundation


let numbers = [111, 325, 56, 10, 68, 860, 99, 105, 450]
let testString = "h((e)llo(world)()"

let timeComplexity = TimeComplexity()
//print(timeComplexity.logarithmicTime(value: 5, onArray: numbers))
//print(timeComplexity.sumFromOne(n: 10000))

let spaceComplexity = SpaceComplexity()
//spaceComplexity.printSorted(onArray: numbers)
//spaceComplexity.optimizationSorted(onArray: numbers)

let swiftStandardLibarry = SwiftStandardLibarry()
//swiftStandardLibarry.addPeopel()

let stackOperation = StackContent()
//stackOperation.exampleUserStack()
//stackOperation.exampleInitArray()
//stackOperation.exampleInitInt()

let comprehensive = ComprehensiveCase()
//comprehensive.printInReverse(onArray: numbers)
print(comprehensive.checkParentheses(string: testString))
