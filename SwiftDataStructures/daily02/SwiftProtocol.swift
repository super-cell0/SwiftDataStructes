//
//  SwiftProtocol.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/12.
//

import Foundation

//Swift中的协议是定义类、结构或枚举必须实现的方法、属性和其他要求的蓝图的一种方式。
//它们允许您为不同类型的对象定义一个通用接口，从而可以轻松处理具有不同实现的对象
protocol DriveableDelegate {
    ///速率
    var speed: Double { get set }
    func start()
    func stop()
}

struct CarDefinitionProtocol: DriveableDelegate {
    var speed: Double
    
    func start() {
        print("car start")
    }
    
    func stop() {
        print("car stop")
    }
    
    
}



//MARK: -在协议中定义静态函数和属性
//静态函数和属性也可以在Swift的协议中定义。这允许在符合协议的所有类型之间共享可重用代码和共享数据
protocol DriveableDelegate01 {
    ///计算燃油效率
    static func calculateFuelEfficiency(fuel: Double, distance: Double) -> Double
    ///速率
    static var topSpeed: Double { get }
    
}

protocol Paintable {
    func paint(color: String)
}

struct SportCar: DriveableDelegate01 {
    static func calculateFuelEfficiency(fuel: Double, distance: Double) -> Double {
        return distance / fuel
    }
    
    static var topSpeed: Double {
        return 150
    }
    
    
}

struct Sedan: DriveableDelegate01 {
    static func calculateFuelEfficiency(fuel: Double, distance: Double) -> Double {
        return distance / fuel
    }
    
    static var topSpeed: Double {
        return 120
    }
    
    
}

//符合同一类中的多个协议
class Truck: DriveableDelegate, Paintable {
    var speed: Double = 0

    func start() {
        print("truck start")
    }

    func stop() {
        print("truck stop")
    }

    func paint(color: String) {
        print("truck with color: \(color)")
    }
}


    
