//
//  SwiftEquableAndHashable.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/24.
//

import Foundation


class SwiftEquableAndHashable {
    
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

//Swift中的Equatable协议是一种需要任何符合类型来实现==运算符的协议，该运算符用于比较符合类型的实例以获得相等。
//通过符合Equatable，类型可以提供自己的等式实现，这可能与Swift标准库提供的默认实现不同。
extension SwiftEquableAndHashable: Equatable, Hashable {
    static func ==(lhs: SwiftEquableAndHashable, rhs: SwiftEquableAndHashable ) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
}

//MARK: - Swift操作符重载
//MARK: - 重载 +
class Point01 {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    static func +(lhs: Point01, rhs: Point01) -> Point01 {
        return Point01(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
}

//MARK: - 重载 <
class Point02: Comparable {
    
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    static func < (lhs: Point02, rhs: Point02) -> Bool {
        if lhs.x < rhs.x {
            return true
        } else if lhs.x == rhs.x {
            return lhs.y < rhs.y
        } else {
            return false
        }
        
    }
    
    static func == (lhs: Point02, rhs: Point02) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    
}

//MARK: -  重载 *
class Matrix {
    //二维整数数组，用来存储矩阵的数据。
    var matrix: [[Int]]
    
    init(matrix: [[Int]]) {
        self.matrix = matrix
    }
    
}

/*
 [
 [1, 3, 2],
 [3, 4, 5]
 ]
 
 [
 [2, 0, 2],
 [1, 2, 4]
 ]
 */
///这是矩阵乘法操作符的重载定义。它接受两个 Matrix 类型的参数 lhs 和 rhs，并返回一个新的 Matrix 对象作为结果。
extension Matrix {
    static func * (lhs: Matrix, rhs: Matrix) -> Matrix {
        /// 获取左操作数 lhs 的行数/
        let rows = lhs.matrix.count
        ///获取右操作数 rhs 的列数/
        let columns = rhs.matrix[0].count
        ///获取右操作数 rhs 的行数，也是左操作数 lhs 列数。
        let rowColumn = rhs.matrix.count
        
        ///创建一个新的二维整数数组 result，用于存储矩阵乘法的结果，初始化为全零矩阵。
        var result = [[Int]](repeating: [Int](repeating: 0, count: columns), count: rows)
        
        // i行
        for i in 0..<rows {
            // j 列
            for j in 0..<columns {
                // k 中间维度
                for k in 0..<rowColumn {
                    result[i][j] += lhs.matrix[i][k] * rhs.matrix[k][j]
                }
            }
        }
        
        return Matrix(matrix: result)
        
    }
    
}

//MARK: -重载自定义 Swift 类型的“[]”下标运算符运算符
class MatrixSubscirpt {
    var matrix: [[Int]]
    
    init(matrix: [[Int]]) {
        self.matrix = matrix
    }
    
    subscript(row: Int, col: Int) -> Int {
        get {
            return matrix[row][col]
        }
        set {
            matrix[row][col] = newValue
        }
    }
    
    
}

//MARK: -重载“！”自定义Swift类型的逻辑非运算符
//没有1 ,2这段代码在大多数情况下并不会报错。但是如果需求是让 ! 运算符能够作用于 LightSwitch 对象的 on 属性，
//如果不这样做 1， 2，那么 ! 运算符将会作用于 LightSwitch 对象本身，而不是其 on 属性。这可能会导致一些意想不到的结果，因为 ! 运算符通常用于逻辑否定，而不是对属性进行操作。
class LightSwitch {
    var on: Bool
    init(on: Bool) {
        self.on = on
    }
    
    //1
//    func toggle() -> Bool {
//        self.on = !self.on
//        return self.on
//    }
    //2
    static prefix func ! (lightSwitch: LightSwitch) -> LightSwitch {
        return LightSwitch(on: !lightSwitch.on)
    }
    
}

//MARK: - 自定义Swift类型的前缀和后缀运算符重载
//在Swift中，运算符可以定义为前缀或后缀，这改变了执行操作的顺序。前缀运算符在操作数之前应用，而后缀运算符在操作数之后应用
//两者之间的区别在于操作顺序。
//在前缀运算符中，首先增加counter的值，然后返回计数器的新值。
//在后缀运算符中，首先返回counter的值，然后递增。
class IntCounter {
    var tag: Int
    
    init(tag: Int) {
        self.tag = tag
    }
    
}

extension IntCounter {
    static prefix func ++ (tagged: inout IntCounter) -> IntCounter {
        tagged.tag += 1
        return tagged
    }
    
    static postfix func ++ (tagged: inout IntCounter) -> IntCounter {
        let retval = tagged
        tagged.tag += 1
        return retval
    }

}

struct IntCounter01 {
  var count: Int
  init(count: Int) {
    self.count = count
  }
}

extension IntCounter01 {
  static prefix func ++ (counter: inout IntCounter01) -> IntCounter01 {
    counter.count += 1
    return counter
  }
  static postfix func ++ (counter: inout IntCounter01) -> IntCounter01 {
    let retval = counter
    counter.count += 1
    return retval
  }
}


//MARK: - 重载“??”自定义 Swift 类型的零拼接运算符
//??
//Swift中的operator用于执行nil合并操作，如果不是nil则返回左操作数，否则返回右操作数
class OptionalSting {
    var value: String?
    init(value: String?) {
        self.value = value
    }
}

extension OptionalSting {
    static func ?? (left: OptionalSting, right: OptionalSting) -> OptionalSting {
        return OptionalSting(value: left.value ?? right.value)
    }
}

//MARK: -重载自定义 Swift 类型的“&&”和'||' 或运算符
class BoolWrapper {
  var value: Bool
  init(_ value: Bool) {
    self.value = value
  }
}

extension BoolWrapper {
  static func && (left: BoolWrapper, right: BoolWrapper) -> BoolWrapper {
    return BoolWrapper(left.value && right.value)
  }
  static func || (left: BoolWrapper, right: BoolWrapper) -> BoolWrapper {
    return BoolWrapper(left.value || right.value)
  }
}
