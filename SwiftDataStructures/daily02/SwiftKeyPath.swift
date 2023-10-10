//
//  SwiftKeyPath.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/8.
//

import Foundation

/*
 Swift中的关键路径是以类型安全的方式引用对象属性的一种方式。
 它们允许您通过提供属性的路径来动态提取和设置属性的值，而不是将属性名称硬编码为字符串。当与map和compactMap等函数结合使用，从对象数组中提取值时，它们特别有用。KeyPaths还可以与符合Codable协议的类、结构和枚举一起使用，以编码和解码自定义数据类型。
 */
/*
 Swift中的键路径语法由两部分组成：
 \运算符：此运算符用于创建键路径表达式。它后面是您想要在密钥路径中引用的一个或多个属性。例如：\Person.address.street创建一个关键路径，引用Address结构的街道属性，这是Person结构的属性。
 [keyPath: xxx]下标语法：此语法用于使用密钥路径访问属性的值。keyPath参数指定了属性的键路径，xxx是对使用\运算符创建的键路径表达式的引用。例如：person[keyPath: streetKeyPath]使用存储在streetKeyPath常量中的键路径访问Person结构的街道属性的值。
 */

struct Person {
    var name: String
    var address: Address
}

struct Address {
    var street: String
    var city: String
}
