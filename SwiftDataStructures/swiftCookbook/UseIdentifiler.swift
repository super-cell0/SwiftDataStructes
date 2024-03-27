//
//  UseIdentifiler.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/28.
//

import Foundation


//Identifiable是Swift中的一项协议，要求符合类型具有唯一的标识符属性，该属性可用于区分该类型的实例。
//在这里，Task结构通过使用UUID结构提供唯一的id属性来符合Identifiable协议。此id可用于区分集合或数组中Task实例，以便轻松更新和删除特定任务。
struct TaskDemo: Identifiable {
    let id = UUID()
    let name: String
    let isComplete: Bool
    
}

/*

Hashable和可识别的区别
Hashable和Identifiable是Swift中两种不同的协议，具有不同的目的。
Hashable协议要求对象能够被散列成唯一值，用作集合中的标识符。Hashable通常用于使自定义类可用作字典中的键或集合中的元素。
Identifiable协议用于唯一元素的集合，要求每个元素都有一个唯一的标识符。Identifiable通常与SwiftUI视图一起使用，以跟踪单个视图和管理动态视图的渲染。
总之，Hashable用于将对象散列为集合的唯一值，而Identifiable用于识别集合中的唯一元素

*/
