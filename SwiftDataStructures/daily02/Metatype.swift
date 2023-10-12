//
//  Metatype.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/11.
//

import Foundation

//元类型是访问Swift中类、结构或枚举类型的一种方式。元类型是表示类、结构或枚举类型的类型。它可用于创建该类型的实例，访问其属性并调用其方法。元类型是Swift语言的一个功能，不与任何特定的框架绑定。
//Swift中的元类型是指描述类型本身的类型。类、结构、枚举或协议的元类型用点（.）后跟关键字self写
class MetaTypeDemo01 {
    //'required'关键字表示这个初始化方法必须被所有子类实现
    required init() {}
    
    func start() {
        print("beidixiaoxiong")
    }
    
}


protocol MetaTypeVehicle {
    init()
    func start()
}

class MateTypeCar: MetaTypeVehicle {
    required init() {}
    
    func start() {
        print("start car")
    }
    
    
}
