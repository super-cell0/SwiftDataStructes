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

protocol PaintableDelegate {
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
class Truck: DriveableDelegate, PaintableDelegate {
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

//MARK: -协议继承
protocol ShapeSecondDelegate {
    func draw() -> String
}

protocol RectangleDelegate: ShapeSecondDelegate {
    var width: Double { get }
    var height: Double { get }
}

struct SquareSecond: RectangleDelegate {
    
    let side: Double
    
    var width: Double { return side }
    
    var height: Double { return side }
    
    func draw() -> String {
        return "边长为\(side)的长方型"
    }
    
}
   
//MARK: - 在Swift中使用协议扩展

protocol Named {
    var name: String { get }
}

struct Persion: Named {
    var name: String
    
}

class Dog: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

extension Named {
    func sayHello() -> String {
        return "hello my name is \(name)"
    }
}

//MARK: - 在Swift中使用面向协议的编程 强调使用协议来定义对象行为的蓝图，而不是继承 (POP)
protocol MovableDelegate {
    func move()
}

extension MovableDelegate {
    func move() {
        print("moving")
    }
}

struct CarPOP: MovableDelegate {
    
}

class TrainPOP: MovableDelegate {
    
}


//MARK: - 在Swift中使用协议相关类型
protocol ContainerDelegate {
    associatedtype Item
    var items: [Item] { get set }
    mutating func add(item: Item)
}

struct IntContainer: ContainerDelegate {
    var items = [Int]()
        
    mutating func add(item: Int) {
        items.append(item)
    }
}

class StringContainer: ContainerDelegate {
    var items = [String]()
    
    func add(item: String) {
        items.append(item)
    }
}

//MARK: - Swift中的协议是类、结构或枚举必须遵循的一组规则。有时，您需要确保符合协议的类或结构必须实现特定方法或属性本身，而不是使用扩展。这就是Self关键字的来源。
protocol SelfPrintableDelegate {
    func selfPrint() -> String
}

class MyClassSecond: SelfPrintableDelegate, Equatable {
    
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func selfPrint() -> String {
        return "name is \(name)"
    }
    
    static func == (lhs: MyClassSecond, rhs: MyClassSecond) -> Bool {
        return lhs.name == rhs.name
    }
    
}

//where子句中的Self关键字用于指定扩展应仅应用于符合SelfPrintable协议以及符合Equatable协议的类型
//它使用参数类型中的Self关键字来指定该方法应与符合SelfPrintable协议的相同类型一起工作。
//在函数内部，使用self == other比较来检查符合类型的两个实例是否相等。
extension SelfPrintableDelegate where Self: Equatable {
    
    func isEqual(other: Self) -> Bool {
        return self == other
    }
}

//MARK: - 在Swift中使用委托模式
//委托模式是将对象之间责任分开的一种方式
//一个被称为委托的对象负责处理某些事件或操作
//另一个对象，即代表，负责发起这些事件或行动
protocol SchoolDelegate: AnyObject {
    func classDidStart()
    func classDidEnd()
}

class School {
    weak var delegate: SchoolDelegate?
    
    func startClass() {
        print("class started")
        delegate?.classDidStart()
    }
    
    func endClass() {
        print("class ended")
        delegate?.classDidEnd()
    }
    
}

class Student: SchoolDelegate {
    func classDidStart() {
        print("Opening notebook.")
    }
    
    func classDidEnd() {
        print("Packing up backpack.")
    }
}
