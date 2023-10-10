//
//  SwiftSet.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/29.
//

import Foundation


class SwiftSet {
    
    ///Swift中的集合是独特元素的无序集合
    ///通用集合操作，如并集、交集和对称差分
    ///可以使用intersection(_:)和symmetricDifference(_:)方法分别找到两个集合的交集和对称差
    func useSet() {
        //使用Set()初始化器创建空集
        _ = Set<String>()
        var favoriteColor: Set = ["red", "blue", "green"]
        
        favoriteColor.insert("pink")
        print(favoriteColor.contains("red"))
    }
    
    func useArray() {
        var numbers = [4, 7, 89 ,3]
        
        numbers.append(6)
        numbers.append(contentsOf: [100, 57, 99])
        numbers.insert(5, at: 0)
        
        //filter(_:)方法允许您创建一个仅包含与特定条件匹配的元素的新数组
        _ = numbers.filter{ $0 % 2 == 0 }
        
        //map(_:)方法允许您转换数组的元素，并从结果中创建一个新的数组
        _ = numbers.map { element in
            element * element
        }
        
        //reduce(_:_:)方法允许您将数组的元素组合成单个值。该方法需要两个参 一个初始值和一个定义如何组合元素的闭包
        let sum = numbers.reduce(0) { firstNum, secondNum in
            firstNum + secondNum
        }
        
        print(sum)
        
    }
    
    func onDict() {
        var myDict = ["a": 1, "b": 2, "c": 3]
        
        //updateValue(_:forKey:)方法更新与给定键关联的值，如果与该键没有关联的值，则返回旧值或零
        _ = myDict.updateValue(100, forKey: "b")
        
        for (key, value) in myDict {
            print("key: \(key), value: \(value)")
        }
        
        let keys = Array(myDict.keys)
        let values = Array(myDict.values)
        print(keys, values)
        
        //filter
        //mapValues
        
    }
    
    
}
