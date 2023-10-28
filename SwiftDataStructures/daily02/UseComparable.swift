//
//  UseComparable.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/28.
//

import Foundation


struct UseComparable: Comparable {
    
    let firstName: String
    let lastName: String
    
    // 排序顺序
    static func < (lhs: UseComparable, rhs: UseComparable) -> Bool {
        if lhs.lastName != rhs.lastName {
            return lhs.lastName < rhs.lastName
        } else {
            return lhs.firstName < rhs.firstName
        }
    }
    
    
}
