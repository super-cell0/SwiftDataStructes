//
//  TestLinkList.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/3.
//

import Foundation

//单向链表
///这种结构允许你在链表中有效地添加、删除和遍历节点，而不需要像数组那样进行元素的复制和移动。
class NodeTest<T: Equatable> {
    ///每个节点都包含的一个值value
    public var value: T
    ///指向下一个节点的引用 它可以是 nil，表示链表的末尾节点
    ///当你在链表中插入新节点时，可以使用 next 属性来建立节点之间的连接
    public var next: NodeTest<T>?
    
    init(value: T) {
        self.value = value
    }
    
    
}

struct LinkListTest<T: Equatable> {
    
    ///头节点
    var head: NodeTest<T>?
    
    ///末尾添加一个新节点
    mutating func append(value: T) {
        let newNode = NodeTest(value: value)  //创建一个新节点，其值为传入的 value
        if head == nil {  //检查链表是否为空
            head = newNode // 如果链表为空 将新节点设置为头节点
        } else {
            var current = head //如果链表不为空 创建一个变量 current 并初始化为头节点
            while current?.next != nil { //遍历链表 直到找到最后一个节点，其 next 属性为 nil
                current = current?.next // 将 current 移动到下一个节点
            }
            current?.next = newNode //将新节点连接到最后一个节点的 next 属性上，从而将新节点添加到链表的末尾
        }
    }
    
    ///删除节点
    mutating func delete(value: T) {
        if head?.value == value { // 检查头节点是否包含要删除的值
            head = head?.next // 如果头节点的值匹配，将头节点更新为下一个节点，即删除头节点
            return
        }

        var current = head  // 创建一个变量 current 并初始化为头节点
        var prev: NodeTest<T>? = nil // 创建一个变量 prev 用于跟踪当前节点的前一个节点

        while current != nil, current?.value != value { // 遍历链表，查找包含要删除值的节点
            prev = current // 将当前节点设置为 prev，将 prev 更新为当前节点
            current = current?.next // 将当前节点移动到下一个节点
        }

        prev?.next = current?.next // 将前一个节点的 next 属性连接到当前节点的下一个节点，从而删除当前节点
    }
    
    
    ///查找节点
    func find(value: T) -> NodeTest<T>? {
        var current = head // 创建一个变量 current 并初始化为头节点
        while current != nil { // 进入循环，遍历链表
            if current?.value == value { // 检查当前节点的值是否等于传入的值
                return current // 如果找到匹配的值，返回当前节点
            }
            current = current?.next // 将当前节点移动到下一个节点，继续查找
        }
        
        return nil // 如果循环结束仍未找到匹配的值，返回 nil 表示未找到
    }
    
    ///反转节点
    mutating func reverse() {
        var prev: NodeTest<T>? = nil // 创建一个变量 prev 用于存储前一个节点
        var current = head // 创建一个变量 current 并初始化为头节点
        var next: NodeTest<T>? = nil // 创建一个变量 next 用于存储下一个节点

        while current != nil {  // 进入循环，遍历链表
            next = current?.next // 将 next 设置为当前节点的下一个节点
            current?.next = prev // 将当前节点的 next 属性指向 prev，实现链表的反转
            prev = current // 将 prev 更新为当前节点
            current = next // 将 current 更新为下一个节点，继续遍历
        }

        head = prev // 将头节点更新为原来的最后一个节点，完成链表的反转

    }
    
    ///打印节点
    func printList() {
        var current = head // 创建一个变量 current 并初始化为头节点
        while current != nil { // 进入循环，遍历链表
            print(current!.value, terminator: " -> ") // 打印当前节点的值，并添加 " -> " 分隔符
            current = current?.next // 将 current 移动到下一个节点
        }
        print("nil") // 打印 "nil" 表示链表结束
    }
    
    
    
}


