//
//  SwiftCollection.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/1.
//

import Foundation


//惰性集合是一种将操作延迟到需要时的集合。这在处理大型数据集时非常有用，
//因为它允许您对数据执行操作，同时最大限度地减少内存使用并提高性能。

enum Direction: Int, CaseIterable {
    case north = 64
    case south = 43
    case east = 13
    case west = 98
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

//递归枚举
//在处理类似树的数据结构（如表达式和层次结构）时，递归枚举特别有用
indirect enum ArithmeticExpression {
    case number(Int)
    case add(ArithmeticExpression, ArithmeticExpression)
    case mul(ArithmeticExpression, ArithmeticExpression)
    
    func evaluate() -> Int {
        switch self {
        case .number(let value):
            return value
        case .add(let first, let second):
            return first.evaluate() + second.evaluate()
        case .mul(let first, let second):
            return first.evaluate() * second.evaluate()
        }
    }
}

enum Shape {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case circle(radius: Double)
    
    func description() -> String {
        switch self {
        case .square(let side) where side > 2:
            return "大正方形边长: \(side)"
        case .square(let side) where side <= 2:
            return "小正方形边长: \(side)"
        case .rectangle(let width, let height):
            return "宽: \(width) , 高: \(height)"
        case .circle(let radius):
            return "半径: \(radius)"
        default:
            return "未知的形状"
        }
    }
    
}

enum TrafficLight {
    case red, yellow, green
}

class SwiftCollection {
    
    //<C: Collection>语法称为类型约束
    //共享一组通用的方法和属性，可用于任何集合。
    func printFirstElement<C: Collection>(collection: C) {
        guard let first = collection.first else {
            print("the collection is empty")
            return
        }
        print(first)
    }
    
    func testPrint() {
        let number = [3, 5, 3, 98]
        printFirstElement(collection: number)
    }
    
    func lazyCollection() {
        let numbers = [37, 5, 3, 98, 101, 90]
        
        let sortedNumbers = numbers.sorted()
        print(sortedNumbers)
        let filterNumber = numbers.filter { $0 % 2 == 0 }
        print(filterNumber)
        let mapNumber = numbers.map { $0 * $0 }
        print(mapNumber)
        let reduceNumber = numbers.reduce(0) { partialResult, second in
            partialResult + second
        }
        //let reduceNumber = numbers.reduce(0, +)
        print(reduceNumber)
        
        let squaredNumbers = numbers.lazy.map { $0 * $0 } // LazyMapCollection<Array<Int>, Int>
        //调用Array(squaredNumbers)强制懒惰集合执行映射并将结果作为数组返回。
        print(Array(squaredNumbers))
        
        //chaining链接
        let chainingNumbers = numbers
            .filter { $0 % 2 == 0 }
            .map { $0 * $0 }
            .reduce(0, +)
        
        print(chainingNumbers)
    }
    
    
    func declareEnum() {
        //swift枚举
        _ = Direction.south
        var demoDirection: Direction = .east
        demoDirection = .north
        print(demoDirection.rawValue)
        
        var productBarcode = Barcode.upc(8, 85909, 51226, 5)
        
        //此初始化器返回一个可选的 应为值可能不存在
        if let direction = Direction(rawValue: 13) {
            print(direction)
        }
        
        switch productBarcode {
        case let .upc(numberSystem, manufacturer, product, check):
            print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
        case let .qrCode(productCode):
            print("QR code: \(productCode)")
        }
        
        let two = ArithmeticExpression.number(5)
        let three = ArithmeticExpression.number(8)
        let sum = ArithmeticExpression.add(two, three)
        print(sum.evaluate())
        
        let square = Shape.square(side: 4)
        print(square.description())
        
        //可以在switch语句中使用枚举来匹配枚举的不同情况。这是一个强大的功能，允许我们以干净和可读的方式处理枚举的不同情况。
        let trafficLight = TrafficLight.yellow
        switch trafficLight {
        case .red:
            print("STOP")
        case .yellow:
            print("Caution")
        case .green:
            print("Go")
        }
        
        for newDirection in Direction.allCases {
            print(newDirection.rawValue)
        }
        
    }
    
    
    
    
}
