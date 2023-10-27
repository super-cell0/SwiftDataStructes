//
//  EscapingClosure.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/24.
//

import Foundation

//Swift闭包可以分为两种类型:逃逸和非逃逸。
//逃逸闭包是指那些在定义它们的函数之后仍然存在的闭包，
//而非逃逸闭包是指那些在函数内部使用并在函数返回时被释放的闭包。
//转义闭包在函数定义的参数类型之前用关键字“escaping”表示。
class SwiftEscapingClosure {
    
    func doSomething(completion: @escaping () -> Void) {
        DispatchQueue.main.async {
            completion()
        }
    }
    
}


