//
//  GenericSubscript.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/11.
//

import Foundation


struct StackDemoThird<T> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop(item: T) -> T? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    
    //Indices.Iterator.Element == Int 是一个类型约束
    //Sequence 序列的元素按照一定的顺序排列，可以使用迭代器遍历序列中的所有元素。
    subscript<Indices: Sequence>(indices: Indices) -> [T] where Indices.Iterator.Element == Int {
        var result = [T]()
        for index in indices {
            guard index < items.count else {
                continue
            }
            result.append(items[index])
        }
        return result
        
    }
    
    
}


