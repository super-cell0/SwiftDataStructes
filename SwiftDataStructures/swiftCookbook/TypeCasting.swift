//
//  TypeCasting.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/26.
//

import Foundation

//Swift中的类型转换是将对象从一种类型转换为另一种类型的过程
//Swift中有两种类型的类型转换:向下转换和向上转换
class TypeCasting {
    
    func demoTypeCast() {
        let stringVal = "hello"
        let intVal = 43
        
        let doubleVal = Double(intVal) //43.0
        let stringDoubleVal = Double(stringVal) //由于“hello”不是一个数字，类型转换失败并返回nil。
    }
    
    //Downcasting
    //向下转换用于将值从超类类型转换为子类类型。向下转换的语法如下:
    func downcasting() {
        //let instance = superclassValue as? SubclassType
    }
    
    //Upcasting用于将值从子类类型转换为超类类型
    func upcasting() {
        //let instance: SuperclassType = subclassValue as SuperclassType
    }
    
}

//Swift中的Downcasting
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String ,artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

class Movie: MediaItem {
    var director: String
    init( name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

//MARK: -在Swift中进行类型检查
//可以使用 is 运算符来检查对象是否为特定类型。如果类型检查成功，表达式的结果是true
