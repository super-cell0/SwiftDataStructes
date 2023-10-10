//
//  ComprehensiveCase.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/25.
//

import Foundation


class ComprehensiveCase {
    
    ///创建一个函数，使用堆栈以相反的顺序打印数组的内容。
    func printInReverse<T>(onArray: [T]) {
        var stack = Stack<T>()
        
        for value in onArray {
            stack.push(element: value)
        }
        
        while let value = stack.pop() {
            print(value)
        }
        
    }
    
    ///检查平衡的括号。给定一个字符串，检查是否有(和)字符，如果字符串中的括号是平衡的，则返回true。
    func checkParentheses(string: String) -> Bool {
        var stack = Stack<Character>()
        
        for character in string {
            if character == "(" {
                stack.push(element: character)
            } else if character == ")" {
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }
        
        return stack.isEmpty
    }
    
    
    
}
