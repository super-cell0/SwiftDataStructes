//
//  SwiftLazy.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//懒惰初始化是Swift中使用的一种设计模式，用于推迟创建对象，直到需要它。
//这意味着对象仅在首次访问时创建，而不是之前。这对于优化性能和管理对象的内存非常有用
class Lightsaber {
    var color: String
    
    init(color: String) {
        self.color = color
        print("Lightsaber initialized")
    }
    
    deinit {
        print("Lightsaber \(color) 正在被停用")
    }
    
}

class Jedi {
    lazy var lightsaber: Lightsaber = {
        return Lightsaber(color: "blue")
    }()
    
    deinit {
        print("Jedi is over")
    }
    
    
}
