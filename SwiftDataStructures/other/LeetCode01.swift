//
//  LeetCode01.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/6.
//

import Foundation


///两数之和。
///给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。
class LeetCode01 {
    
    func twoSum(nums: [Int], target: Int) -> [Int] {
        var res = [Int]()
        var dict = [Int : Int]()
        for i in 0 ..< nums.count {
            let other = target - nums[i]
            if dict.keys.contains(other) {
                res.append(i)
                res.append(dict[other]!)
                return res
            }
            dict[nums[i]] = i
        }
        return res
    }
    
    //swift最优-哈希表
    func twoSum01(nums: [Int], target: Int) -> [Int] {
        var numToIndex = [Int: Int]() //用于存储数字和其对应的索引
        //[2, 7, 11, 15]
        for (index, num) in nums.enumerated() {
            //0, 2
            //1, 7
            //2, 11
            //3, 15
            let complement = target - num
            //7
            //检查差值是否已经在字典中
            //target = 9
            //第一次循环下表 0, 元素 2
            //complement = 7
            //numToIndex[7] 找他的对应的key
            if let complementIndex = numToIndex[complement] {
                return [complementIndex, index]
            }
            // 否则将当前数字和索引存储在字典中
            numToIndex[num] = index
        }
        // 如果没有找到满足条件的两个数，返回一个空数组
        return []
    }
    
    //两次迭代
    func twoSum02(nums: [Int], target: Int) -> [Int] {
        let count = nums.count // 获取数组元素的数量，用于确定循环的范围
        for i in 0..<count { // 外部循环，迭代数组中的每个元素
            let num1 = nums[i] // 获取当前外部循环中的元素
            //[2, 7, 11, 15]
            //2
            //7
            let complement = target - num1 // 计算需要查找的补数
            //[7, 11, 15]
            for j in (i + 1)..<count { // 内部循环，从外部循环的下一个元素开始迭代
                let num2 = nums[j] // 获取当前内部循环中的元素
                if num2 == complement { // 如果找到匹配的元素
                    return [i, j] // 返回匹配元素的索引
                }
            }
        }
        return [] // 如果没有找到满足条件的两个数，返回一个空数组
    }
    
    //[2, 7, 11, 15]
    func twoSum03(nums: [Int], target: Int) -> [Int] {
        let count = nums.count
        for i in 0..<count {
            let num1 = nums[i]
            let complement = target - num1
            for j in (i + 1)..<count {
                let num2 = nums[j]
                if complement == num2 {
                    return [i, j]
                }
            }
        }
        return []
    }

    
    
}
