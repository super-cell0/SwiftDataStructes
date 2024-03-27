//
//  SwiftClass.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/3.
//

import Foundation

//Swift中的属性用于存储与类或结构实例关联的值。它们可以是存储属性，可以保存一个值，也可以是计算值的计算属性
/*
 类是引用类型，这意味着当分配给变量或常量时，它们通过引用传递
 类可以有一个去初始化器，即从内存中解离类实例时执行的代码
 类可以使用继承，允许它们从超类继承属性和方法
 类可以被标记为final，这意味着它们不能被子类化。
 */
class MyClass {
    
    //指定初始化器是类或结构的主要初始化器，它负责完全初始化类或结构的所有属性。
    var name: String
    //默认初始化器
    //只要您的所有属性都有默认值，如果没有定义初始化器，Swift就会提供默认初始化器。
    var myproperty: Int = 0
    
    //在Swift中，计算属性是没有存储值的属性，而是提供getter和可选setter来计算其值
    var mySoredProperty: Int = 0
    var myComputedProperty: Int {
        //访问计算属性的值
        get {
            return mySoredProperty * 2
        }
        //设置计算属性的值
        //Swift中的初始化器是用于创建类或结构新实例的特殊方法。他们负责在首次创建对象时设置对象的初始状态
        set {
            mySoredProperty = newValue / 2
        }
    }
    
    var property: Int
    
    //相应属性的值设置为参数的值
    init(name: String, property: Int) {
        self.name = name
        self.property = property
    }
    
    //便利初始化器是二级初始化器，可以调用具有默认值或特定值的指定初始化器。
    //便利初始化器可用于提供更简单或更方便的方式来创建类或结构的实例。
    //便利初始化器调用默认值为chenqs、24的指定初始化器
    convenience init() {
        self.init(name: "chenqs", property: 24)
    }
    
    //Swift中的方法是与类或结构的实例关联的函数。它们可用于对对象的属性执行操作或计算，也可以获取参数和返回值。
    func printDemo() {
        print("beidixiaoxiong")
        property *= 2
    }
    
    
}

//结构是一种值类型，这意味着当您创建结构的实例时，它会创建数据的新副本。当您想确保对结构的一个实例的更改不会影响其他实例时，这可能会很有用
//它们是值类型，这意味着当您创建结构的实例时，它会创建数据的新副本。
//它们可以像类一样拥有属性和方法。
//当您想确保对结构的一个实例的更改不会影响其他实例时，它们非常有用。
/*
 结构是值类型，这意味着当分配给变量或常量时，它们会通过值传递。
 结构不能有去初始化器。
 结构使用继承，但可以符合协议。
 结构不需要被标记为final，因为它们不能被子类化
 */
struct Point {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
      self.x = x
      self.y = y
    }
    
    func distance(point: Point) -> Double {
      let deltaX = x - point.x
      let deltaY = y - point.y
      return sqrt(deltaX * deltaX + deltaY * deltaY) //sqrt 是求平方根
    }


}


//Swift中的下标是访问集合、列表或序列元素的速记方式。它们允许您使用方括号访问类或结构的元素[]而不是调用一个方法。
class MyList {
    var items: [String]
    
    init(items: [String]) {
        self.items = items
    }
    
    subscript(index: Int) -> String {
        get {
            return items[index]
        }
        set {
            items[index] = newValue
        }
    }
}

