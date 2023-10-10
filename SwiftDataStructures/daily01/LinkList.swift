//
//  LinkList.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/2.
//
//链接列表以线性、单向顺序排列的值的集合
//与Swift Array等连续存储选项相比，链接列表具有一些理论优势：
//1常数时间从列表的前面插入和删除。
//2可靠的性能特性
//
//链接列表是一个节点链。节点有两个职责：
//1保持一个值
//2留对下一个节点的引用。nil值表示列表的结尾


import Foundation


public struct LinkList<T> {
    ///头节点
    public var head: Node<T>?
    ///尾节点
    public var tail: Node<T>?
    
    public init() {}
    
    ///头节点为nil
    public var isEmpty: Bool {
        head == nil
    }
    
    ///在列表的前面添加一个值。
    ///如果正在推送空列表，则新节点既是列表的head又是tail。
    public mutating func push(value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    ///在列表末尾添加一个值。
    public mutating func append(value: T) {
        guard !isEmpty else {
            push(value: value)
            return
        }
        
        tail?.next = Node(value: value)
        tail = tail?.next
    }
    
    ///找到要插入值的节点
    public func node(index: Int) -> Node<T>? {

        var currentNode = head
        var currentIndex = 0

        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    ///在特定列表节点之后添加一个值
    @discardableResult
    public mutating func insert(value: T, node: Node<T>) -> Node<T> {
        guard tail !== node else {
            append(value: value)
            return tail!
        }
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
    
    //从列表中删除值
    ///pop：删除列表前面的值
    @discardableResult
    public mutating func pop() -> T? {
        defer {
            head = head?.next
            if isEmpty { //列表变为空，则将tail设置为nil。
                tail = nil
            }
        }
        return head?.value
    }
    
    
    
    
    
    
    
    
    
    
        
    ///打印节点
    func printList() {
        var current = head // 创建一个变量 current 并初始化为头节点
        while current != nil { // 进入循环，遍历链表
            print(current!.value, terminator: " -> ") // 打印当前节点的值
            current = current?.next // 将 current 移动到下一个节点
        }
        print("nil") // 打印 "nil" 表示链表结束
    }

}

//extension LinkList: CustomStringConvertible {
//    public var description: String {
//        guard let head = head else { return "empty list"}
//        return String(describing: head)
//    }
//}
