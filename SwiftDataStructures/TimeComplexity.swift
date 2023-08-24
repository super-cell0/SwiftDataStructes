//
//  TimeComplexity.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

import Foundation


///时间复杂度
class TimeComplexity {
    
    ///恒定时间。
    ///无论输入大小，常数时间算法都是具有相同运行时间的算法
    ///names数组的大小对此函数的运行时间没有影响。无论输入有10个项目还是1000万个项目
    ///此函数只检查数组的第一个元素 随着输入数据的增加，算法所需的时间不会改变
    ///O(1)
    func constantTime(names: [String]) {
        if let first = names.first {
            print(first)
        } else {
            print("no names")
        }
    }


    ///线性时间。
    ///此函数打印出String数组中的所有名称。随着输入数组大小的增加，for循环的迭代次数会增加相同数量。
    ///O(N)
    func lineTime(names: [String]) {
        for name in names {
            print(name)
        }
    }
    
    ///二次时间。
    ///随着输入数据大小的增加，算法运行所需的时间急剧增加。因此，n平方算法在规模上表现不佳。
    ///O(n^2)
    func quadraticTime(names: [String]) {
        for _ in names {
            for name in names {
                print(name)
            }
        }
    }
    
    let numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450]
    ///对数时间。
    ///一个O(n)算法。线性时间相当不错
    func logarithmicTime(value: Int, onArray: [Int]) -> String {
        for element in onArray {
            if element == value {
                return "是的该数组里面包含这个数字"
            }
        }
        return "该数组里面不包含这个数字"
    }
    
    ///对数时间
    ///O(log n)
    ///优化logarithmicTime
    ///你拥有的数据越多，减半效果的缩放就越多。
    ///如果您正在检查数组中是否存在数字451，那么天真算法必须从头到尾迭代
    ///总共对数组中的九个值进行九次检查。然而，由于数组是排序的，可以立即通过检查中间值来删除一半必要的比较
    func optimizationLogarithmicTime(value: Int, onArray: [Int] ) -> String {
        
        guard !onArray.isEmpty else { return "该数组里面不包含这个数字"}
        let middleIndex = onArray.count / 2
        
        if value <= onArray[middleIndex] {
            for mid in 0...middleIndex {
                if onArray[mid] == value {
                    return "是的该数组里面包含这个数字"
                }
            }
        } else {
            for mid in middleIndex..<onArray.count {
                if onArray[mid] == value {
                    return "是的该数组里面包含这个数字"
                }
            }
        }
        
        return "该数组里面不包含这个数字"
    }
    
    ///准线性时间。
    ///O(nlog n)
    ///准线性时间算法的性能比线性时间差，但明显优于二次时间
    func quasilinearTime() {
        //sort方法
    }
    
    //比较时间复制度
    ///时间复杂度是O(n)
    func sumFromOne(n: Int) -> Int {
        var result = 0
        for i in 1...n {
            result += i
        }
        return result
    }
    
    ///将运行得更快，因为它从标准库调用编译的代码
    ///O(n)
    func optimizationSum(n: Int) -> Int {
        (1...n).reduce(0, +)
    }
    
    ///O(1)
    func untilOptimizationSum(n: Int) -> Int {
        ((n + 1) * n ) / 2
    }
    
    
}

