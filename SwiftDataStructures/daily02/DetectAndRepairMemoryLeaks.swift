//
//  DetectAndRepairMemoryLeaks.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//在Swift中检测和修复内存泄漏
//内存泄漏是一种软件错误，当应用程序动态分配内存但未能正确重新分配内存时，就会发生。随着时间的推移，这可能会导致内存使用量增加，导致性能不佳，并最终导致应用程序崩溃。
class ChildMemory {
  var name: String
  var parent: ParentMemory?
  init(name: String, parent: ParentMemory) {
    self.name = name
    self.parent = parent
  }
  deinit {
    print("Child \(name) is being deinitialized")
  }
}

class ParentMemory {
  var name: String
  var children: [ChildMemory] = []
  init(name: String) {
    self.name = name
  }
  func addChild(name: String) {
    let child = ChildMemory(name: name, parent: self)
    children.append(child)
  }
  deinit {
    print("Parent \(name) is being deinitialized")
  }
}


