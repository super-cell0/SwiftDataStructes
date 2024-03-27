//
//  AccessControl .swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//Swift提供四种不同级别的访问控制：
//private：限制对所包含声明的访问
//file-private：限制对封闭文件的访问
//internal：限制对封闭模块的访问
//public：允许从任何源文件和模块访问
//默认访问级别是internal的，这意味着如果您没有指定任何内容，它将设置为internal。

class AccessControl {
    //Swift中的文件私有访问控制允许您将变量、常量、属性和函数的范围限制在它们定义的文件中。这意味着它们只能在同一文件中访问，而不能从同一模块中的其他文件访问。
    fileprivate var myFilePrivateProperty1 = "I'm file private"
    fileprivate func myFilePrivateMethod1() {
      print("I'm a file-private method")
    }
    
    //公共访问允许从任何模块或库访问类型或类型成员（例如属性、方法、初始化器）。这意味着任何代码，无论是在同一模块还是在不同的模块中，都可以访问和使用公共类型或类型成员。
    public var myPublicProperty2 = "I am a public property"
    public func myPublicMethod2() {
      print("I am a public method")
    }

}
