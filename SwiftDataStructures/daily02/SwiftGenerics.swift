//
//  SwiftGenerics.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/9.
//

import Foundation

struct StackDemo<Element> {
    var items = [Element]()
    
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        //移除并返回集合的最后一个元素。
        return items.popLast()
    }

}

//在Swift Generics上使用多个类型参数
struct Pair<T, U> {
    let first: T
    let second: U
}

//在Swift Generics上使用约束
protocol FlyableDelegate {
    func fly()
}

class Bird: FlyableDelegate {
    
    func fly() {
        print("i can fly")
    }
    
}

struct Flight<T: FlyableDelegate> {
    let flyingObject: T
}
