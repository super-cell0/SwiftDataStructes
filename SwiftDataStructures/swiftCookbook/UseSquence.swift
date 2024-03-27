//
//  UseSquence.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/28.
//

import Foundation


struct UseSquence: Sequence {
    
    let start: Int
    let end: Int
    
    func makeIterator() -> IntIterator {
        return IntIterator(start: start, end: end)
    }
    
}

struct IntIterator: IteratorProtocol {
    let end: Int
    var current: Int
    
    init(start: Int, end: Int) {
        self.end = end
        self.current = start
    }
    
    mutating func next() -> Int? {
        if current < end {
            let value = current
            current += 1
            return value
        }
        return nil
    }
    
}
