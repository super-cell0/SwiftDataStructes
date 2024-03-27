//
//  SpaceComplexity.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

//时间复杂度是衡量随着输入大小增加而运行算法所需时间的指标
//空间复杂度是算法运行所需资源的度量
//大O符号用于表示时间和空间复杂性的一般形式
//时间和空间复杂性是可扩展性的高级衡量标准；它们不衡量算法本身的实际速度
//对于小型数据集，时间复杂度通常无关紧要。例如，当n很小时，准线性算法可能比二次算法慢

import Foundation


class SpaceComplexity {
    
    //[111, 325, 56, 10, 68, 860, 99, 105, 450]
    ///由于array.sorted()将生成一个具有相同array大小的全新数组
    ///空间复杂度为O(n)
    func printSorted(onArray: [Int]) {
        let sorted = onArray.sorted()
        for element in sorted {
            print(element)
        }
    }
    
    ///空间复杂度为O(1)。
    ///优化printSorted
    func optimizationSorted(onArray: [Int]) {
        //检查数组是否为空
        guard !onArray.isEmpty else { return }
        //currentCount跟踪打印语句的数量
        var currentCount = 0
        //minValue存储最后打印的值。
        var minValue = Int.min
        
        for value in onArray {
            if value == minValue {
                print(value)
                currentCount += 1
            }
        }
        
        while currentCount < onArray.count {
            //找到大于minValue的最低值，并将其存储在currentValue。
            var currentValue = onArray.max()!
            
            for value in onArray {
                if value < currentValue && value > minValue {
                    currentValue = value
                }
            }
            
            //更新currentCount时在数组中打印所有currentValue值
            for value in onArray {
                if value == currentValue {
                    print(value)
                    currentCount += 1
                }
            }
            
            minValue = currentValue
        }
        
        print(currentCount)
        print(minValue)
        
    }
    
    
}
