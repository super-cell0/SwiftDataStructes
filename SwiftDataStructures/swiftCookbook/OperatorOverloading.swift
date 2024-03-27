//
//  OperatorOverloading.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/24.
//

import Foundation


//操作符重载
struct Vector2D {
    var x: Double
    var y: Double
    
    static func +(lhs: Vector2D, rhs: Vector2D) -> Vector2D {
        return Vector2D(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    
}
