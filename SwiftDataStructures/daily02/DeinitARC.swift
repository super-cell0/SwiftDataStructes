//
//  DeinitARC.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//使用deinit进行手动内存管理
//在Swift中，自动引用计数（ARC）会自动管理对象的内存，但有时您可能需要手动管理对象的内存。做到这一点的一种方法是使用deinit方法。
//deinit方法在类实例被释放之前被调用。这是释放对象在其生命周期内获取的任何资源的完美地方，
class DeinitARC {
    var fileHandle: FileHandle?
    
    init() {
        let file = URL(filePath: "/Users/mac/swift.txt")
        fileHandle = try? FileHandle(forWritingTo: file)
    }
    
    deinit {
        fileHandle?.closeFile()
    }
    
}
