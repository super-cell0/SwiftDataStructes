//
//  AlgorithmList.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/6.
//

import Foundation

class AlgorithmList {
    
    ///去掉数组重复元素
    func repeatOnNum<T: Equatable>(onValue: [T]) -> [T] {
        var result: [T] = []
        for element in onValue {
            //contains() 返回一个布尔值，该值指示序列是否包含给定的元素
            if !result.contains(element) {
                result.append(element)
            }
        }
        return result
    }

}
