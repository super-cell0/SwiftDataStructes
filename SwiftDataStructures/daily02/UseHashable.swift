//
//  UseHashable.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/27.
//

import Foundation


struct UseHashable: Hashable {
    let firstName: String
    let lastName: String
    let age: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(firstName)
        hasher.combine(lastName)
        hasher.combine(age)
    }
    
}


