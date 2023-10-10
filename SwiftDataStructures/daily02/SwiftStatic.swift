//
//  SwiftStatic.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/8.
//

import Foundation

//静态函数和属性是属于类型本身的类级成员，而不是类型的实例。这意味着无需创建类或结构的实例即可调用它们。在Swift中，关键字static用于定义静态函数或属性
struct Math {
    
    static func square(number: Int) -> Int {
        return number * number
    }
}

class Counter {
    static var myCount = 0
    
    init() {
        Counter.myCount += 1
    }
    
}

//Swift中静态和实例函数之间的区别
//Swift中的静态和实例函数或属性之间存在多种基本差异：
//范围：静态函数和属性属于类型本身，而不是类型的实例。无需创建该类型的实例，即可调用或访问它们。实例函数和属性属于该类型的实例，必须在该类型的实例上调用或访问它们。
//语法：静态函数和属性使用函数或属性定义前面的静态关键字声明。实例函数和属性声明时没有静态关键字。
//功能：静态函数和属性可用于封装不依赖于该类型的单个实例的逻辑，并且该类型的所有实例都共享。实例函数和属性可用于封装依赖于类型单个实例的逻辑，并且特定于每个实例。
//可访问性：静态函数和属性可以从程序中的任何地方访问，无论上下文或类型的可见性如何。实例函数和属性只能从类型实例内部访问，或从在类型实例上操作的类型方法中访问。
//内存：静态函数和属性存储在内存中的单个位置，并由该类型的所有实例共享。实例函数和属性存储在内存中的单独位置，每种类型的实例一个。
class DemoCar {
    static var meaufacturer = "unknown" //静态属性
    var color = "unknown" //实例属性
    
    ///静态函数
    static func describeMeaufacturer() -> String {
        return "The manufacturer is \(meaufacturer)"
    }
    
    ///实例函数
    func describeColor() -> String {
        return "the color is \(color)"
    }
}


