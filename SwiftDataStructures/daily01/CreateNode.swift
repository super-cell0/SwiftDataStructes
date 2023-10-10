//
//  CreateNode.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/2.
//

import Foundation

public class Node<T> {
    ///每个节点都包含的一个值value
    public var value: T
    ///指向下一个节点的引用 它可以是 nil，表示链表的末尾节点
    ///当你在链表中插入新节点时，可以使用 next 属性来建立节点之间的连接
    public var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}

//extension Node: CustomStringConvertible {
//    public var description: String {
//        guard let next = next else {
//            return "\(value)"
//        }
//
//        return "\(value) -> " + String(describing: next) + " "
//    }
//
//}


class CreateNode {
    
    func createLinkNode() {
        let node1 = Node(value: 1)
        let node2 = Node(value: 2)
        let node3 = Node(value: 3)
        
        node1.next = node2
        node2.next = node3
        
        print(node1)
    }
    
    
}
