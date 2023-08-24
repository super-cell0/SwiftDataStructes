//
//  TimeComplexity.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

import Foundation


///时间复杂度
class TimeComplexity {
    
    ///无论输入大小，常数时间算法都是具有相同运行时间的算法
    ///names数组的大小对此函数的运行时间没有影响。无论输入有10个项目还是1000万个项目
    ///此函数只检查数组的第一个元素 随着输入数据的增加，算法所需的时间不会改变
    ///恒定时间
    ///O(1)
    func checkFirst(names: [String]) {
        if let first = names.first {
            print(first)
        } else {
            print("no names")
        }
    }


    ///线性时间
    ///此函数打印出String数组中的所有名称。随着输入数组大小的增加，for循环的迭代次数会增加相同数量。
    ///O(N)
    func printNames(names: [String]) {
        for name in names {
            print(name)
        }
    }
    
}

