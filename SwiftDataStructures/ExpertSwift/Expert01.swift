//
//  Expert01.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/11/9.
//

import Foundation


class ExpertSwift {
    
    func forInE() {
        let number = [1, 2, 4, 10, -1, 2, -10]
        var total = 0
        for newNumber in number {
            total += newNumber
        }
        print(total)
    }
    
    func reduceE() {
        let numbers = [1, 2, 4, 10, -1, 2, -10]
        let total = numbers.reduce(0, { $0 + $1})
        print(total)
    }
    
    //1.3
    
}
