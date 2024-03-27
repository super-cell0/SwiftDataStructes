//
//  SwiftAutoClosure.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/24.
//

import Foundation


class SwiftAutoClosure {
    
    func delayedPrint(message: String, delay: Double, closure: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
    
    
}
