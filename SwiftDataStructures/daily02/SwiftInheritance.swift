//
//  SwiftInheritance.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/7.
//
//多态是指不同类型的对象对同一种消息或方法的响应不同
//使用一个通用的接口处理不同类型的对象

import Foundation

class Vehicle {
    var wheels: Int
    var weight: Double
    var maxSpeed: Double
    
    init(wheels: Int, weight: Double, maxSpeed: Double) {
        self.wheels = wheels
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func description() -> String {
        return "有\(wheels) 轮子的车辆，重量为\(weight) 公斤，最大速度为\(maxSpeed) 每小时公里。"
    }
    
}

class Car: Vehicle {
    var numberOfDoors: Int
    
    init(wheels: Int, weight: Double, maxSpeed: Double, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(wheels: wheels, weight: weight, maxSpeed: maxSpeed)
    }
    
}

//Swift中的多态性允许将不同类的对象视为公共超类或协议的对象。它允许不同类型的对象可以互换使用，只要它们符合通用接口或协议。
class ShapeDemo {
    func draw() {
        print("画一个形状")
    }
}

class Circle: ShapeDemo {
    override func draw() {
        print("draw a circle")
    }
}

class Square: ShapeDemo {
    override func draw() {
        print("draw a square")
    }
}

extension Double {
    ///将double值四舍五入到指定数量的小数位
    func roundToDecimal(fractionDigits: Int) -> Double {
        let mul = pow(10, Double(fractionDigits))
        return Darwin.round(self * mul ) / mul
    }
}

extension CGSize {
    var area: CGFloat {
        return width * height
    }
}
