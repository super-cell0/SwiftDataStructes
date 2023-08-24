//
//  StacksOperations.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

/*
 堆栈只有两个基本操作:
 1-push：将元素添加到堆栈的顶部。
 2-pop：删除堆栈的顶部元素
 栈被称为LIFO (last-in-first-out)先进先出数据结构
 */

/*
 iOS使用导航堆栈将视图控制器推入和弹出
 存分配在架构级别使用堆栈。局部变量的内存也使用堆栈进行管理
 */

import Foundation


public struct Stack<Element> {
    
    private var storage: [Element] = []
    public init() { }
    
    public mutating func push(element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    //在不改变其内容的情况下查看堆栈的顶部元素。
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
    
}

extension Stack: CustomDebugStringConvertible {

    public var debugDescription: String {
        """
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n") )
        """
    }


}


class StackContents {
    
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
    
}
