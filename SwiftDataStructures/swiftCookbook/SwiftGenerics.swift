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

//MARK: -
//在Swift Generics上使用多个类型参数
struct Pair<T, U> {
    let first: T
    let second: U
}


//MARK: -
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


//MARK: -
protocol ContainerDemoDelegate {
    associatedtype Item
    var items: [Item] { get set }
    mutating func append(item: Item)
    mutating func pop() -> Item
    
    var itemCount: Int { get }
    
}

struct ContainerDemo<T>: ContainerDemoDelegate {
    
    var items = [T]()

    mutating func append(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    var itemCount: Int {
        return items.count
    }
    
}


//MARK: -用泛型扩展类型
//extension Array {
//    
//    func firstDemo<T>(predicate: (Element) -> T? ) -> T? {
//        for element in self where predicate(element) != nil {
//            return predicate(element)
//        }
//        return nil
//    }
//    
//}

extension Array {
  func firstDemo<T>(predicate: (Element) -> T?) -> T? {
    for element in self where predicate(element) != nil {
      return predicate(element)
    }
    return nil
  }
}



//MARK: - 带有泛型的递归约束
///该类被限制为只允许与父类类型相同的BinaryTree实例
///二叉树数据结构
class BinaryTree<T> {
    var myValue: T
    var left: BinaryTree<T>?
    var right: BinaryTree<T>?
    
    init(myValue: T) {
        self.myValue = myValue
    }
    
}
 
