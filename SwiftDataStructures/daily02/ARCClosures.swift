//
//  ARCClosures.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//闭包是自包含的代码块，可以在应用程序中传递和使用。它们可以从定义它们的上下文中捕获和存储对任何常量和变量的引用。
//当闭包捕获对对象的引用时，它会增加对象的引用计数。这可能会导致保留循环，其中两个对象彼此有强烈的引用，并且两者都不能被ARC分配。
class Wizard {
    var name: String
    var spell: (() -> Void)?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Wizard \(name) 正在消失")
    }
    
}
