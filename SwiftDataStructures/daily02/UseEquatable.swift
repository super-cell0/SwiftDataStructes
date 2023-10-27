//
//  UseEquatable.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/27.
//

import Foundation

struct UseEquatable: Equatable {
    let name: String
    let age: Int
    
    static func ==(lhs: UseEquatable, rhs: UseEquatable) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}
