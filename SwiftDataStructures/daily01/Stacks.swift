//
//  Stacks.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/29.
//

import Foundation


/*
 stack operations:
 堆栈只有两个基本操作:
 push:将一个元素加到栈顶。
 pop:移除堆栈顶部的元素。
 
 堆栈被称为LIFO(后进先出)数据结构
 
 iOS使用导航堆栈将视图控制器推入和弹出到视图之外。
 内存分配在体系结构级别使用堆栈。本地变量的内存也使用堆栈进行管理。
 搜索和征服算法，比如从迷宫中找到一条路径，使用堆栈来促进回溯
 
 push和pop都具有O（1）时间复杂度
 
 */

public struct Stacks<Element> {
    ///存储
    public var storage: [Element] = []
    
    public init(_ element: [Element]) {
        storage = element
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        return storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
    
}

extension Stacks: CustomDebugStringConvertible {
    public var debugDescription: String {
        "\(storage.map { "\($0)" }.reversed().joined(separator: "\n")) "
      }
    
}

extension Stacks: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: Element...) {
    storage = elements
  }
}



