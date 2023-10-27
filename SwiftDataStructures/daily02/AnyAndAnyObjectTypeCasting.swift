//
//  AnyAndAnyObjectTypeCasting.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/26.
//

import Foundation


//Any和AnyObject是Swift中的两个特殊类型别名，允许您将任何值转换为特定类型
//Any用于表示任何类型，包括函数和可选类型
//AnyObject用于表示类类型的任何实例
/*
 Any是Swift中的一种类型，它可以表示任何类型的实例，包括函数类型。它可用于存储值的异构集合。
 AnyObject是Swift中的一种类型，可以表示任何类类型的实例。它可用于存储未知特定类类型的类实例集合。
 Any和AnyObject的主要区别在于Any可以表示任何类型，包括值类型和函数类型，而AnyObject只能表示类类型。
 */
class AnyTypeCasting {
    
    func demoAny() {
        let mixedArray: [Any] = [1, "hello", true, 2.0]
        for item in mixedArray {
            switch item {
            case let x as Int:
                print(x)
            case let x as String:
                print(x)
            case let x as Bool:
                print(x)
            case let x as Double:
                print(x)
            default:
                print("unknown type")
            }
        }
    }
    
    
}

class CarAny {}
class SongAny {}

