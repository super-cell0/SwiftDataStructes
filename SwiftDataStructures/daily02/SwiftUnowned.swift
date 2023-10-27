//
//  SwiftUnowned.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

class PersonSecond {
    var name: String = ""
    unowned var home: Home
    
    init(name: String, home: Home) {
        self.name = name
        self.home = home
    }
    
    deinit {
        print("\(name) 不再住在家里了.")
    }
}

class Home {
    var address: String
    
    init(address: String) {
        self.address = address
    }
    
    deinit {
        print("家 \(address) 已经被拆除了.")
    }
    
}
