//
//  SwiftWeakOrStrong.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//强引用意味着只要存在至少一个对对象的强引用，对象就不会被释放。
//另一方面，弱引用不会阻止对象被释放。当一个对象只有弱引用时，它将被释放。
class Child {
    var name: String
    weak var parent: Parent?
    
    init(name: String, parent: Parent) {
        self.name = name
        self.parent = parent
    }
    
    deinit {
        print("Child \(name) is being deinitialized")
    }
    
}

class Parent {
    
  var name: String
  var children: [Child] = []
    
  init(name: String) {
    self.name = name
  }
    
  func addChild(name: String) {
      
    let child = Child(name: name, parent: self)
    children.append(child)
  }
    
  deinit {
    print("Parent \(name) is being deinitialized")
  }
    
}

