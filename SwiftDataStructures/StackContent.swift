//
//  StackContent.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/25.
//

import Foundation

class StackContent {
    
    func exampleUserStack() {
        var stack = Stack<Int>()
        stack.push(element: 1)
        stack.push(element: 2)
        stack.push(element: 3)
        stack.push(element: 4)
        
        print(stack)
        
        if let poppedElement = stack.pop() {
            assert(4 == poppedElement)
            print("popped: \(poppedElement)")
        }
    }
    
    func exampleInitArray() {
        let array = ["A" , "B", "C", "D"]
        var stack = Stack(element: array)
        print(stack)
        stack.pop()
    }
    
    func exampleInitInt() {
        var stack: Stack = [1.0, 2.0, 3.0, 4.0]
        print(stack)
        stack.pop()
    }
    
}
