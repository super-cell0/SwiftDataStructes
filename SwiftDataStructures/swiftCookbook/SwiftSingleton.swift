//
//  SwiftSingleton.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/8.
//

import Foundation


//单例是一种设计模式，其中类只有一个实例，并提供对该实例的全局访问点
//单例可用于管理共享状态或资源，例如数据库连接、网络套接字或共享配置数据。
//通过使初始化器私有，您可以防止类从类外部实例化，从而确保只有一个实例。
class SetSings {
    static let shared = SetSings()
    //通过使初始化器私有，可以防止类从类外部实例化，从而确保只有一个实例。
    private init() {}
    
    var fontSize: Double = 14.0
    
}
