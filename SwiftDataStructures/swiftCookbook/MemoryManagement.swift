//
//  MemoryManagement.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//自动引用计数（ARC）是Swift中用于自动管理对象内存的内存管理机制。
//ARC的工作原理是跟踪对对象的引用数量，并在没有更多引用时自动释放它。
//这样，不再需要的对象会自动解除分配，仍然需要的对象也不会解除分配。

class MyClassThird {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("MyClass \(name) 正在被去初始化")
    }
    
}
