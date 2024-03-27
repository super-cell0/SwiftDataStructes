//
//  SwiftStandardLibarry.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//


/*
 随机访问:
 如果数据结构能够在一定的时间内处理元素检索，那么它就具有随机访问特性
 其他数据结构(如链表和树)不具有恒定时间访问
 */

/*
 //-2
 阵列性能:
 当数据结构包含的数据量需要增长时-两个因素而异
 1-插入位置-将元素添加到数组的最有效方案是在数组末尾附加它
 2-第二个因素是阵列的容量
  */

/*
 插入字典总是需要固定的时间
 查找操作也需要恒定的时间，这比在数组中找到特定元素要快得多，而该元素需要从数组的开头走到插入点。
 可以通过Collection协议多次遍历字典的键值。这个顺序虽然没有定义，但每次遍历时都会保持相同，直到集合被更改（突变）
 */

/*
 Array的insert(at:)等功能具有性能特征，在随意使用时可能会削弱性能。如果您发现自己需要经常使用数组开头附近的索引的insert(at:)，您可能需要考虑不同的数据结构，如链接列表
 Dictionary放弃了维护元素顺序的能力，以实现快速插入和搜索
 Set保证值集合的唯一性。Set针对速度进行了优化，并放弃了保留元素顺序的能力
 */

import Foundation


class SwiftStandardLibarry {
    
    var people = ["chen", "liu", "zhang", "wang"]
    var scores: [String: Int] = ["cehn": 1, "zhang": 2, "wang": 3]
    var bag: Set<String> = ["Candy", "Juice", "Gummy"]

    
    //-2
    //恒定时间操作
    func addPeopel() {
        people.append("beidixiaoxiong")
        print(people)
    }
    
    //每个元素都必须向后移动一个索引，这需要n个步骤。如果数组中的元素数量翻倍，则此insert操作所需的时间也将翻倍
    func insertPeople() {
        people.insert("wn", at: 2)
        print(people)
    }
    
    func insertSet() {
        bag.insert("Candy")
        print(bag)

    }

    
}

