//
//  cookbook01.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/14.
//

import Foundation


class CookbookHigher {
    
    ///高阶函数
    func addTwo(num: Int) -> Int {
        return num + 2
    }
    
    func mulThree(num: Int) -> Int {
        return num * 3
    }
    
    func compose(firstFunc: @escaping (Int) -> Int, secondFunc: @escaping (Int) -> Int) -> (Int) -> Int {
        return { (input: Int) -> Int in
            return secondFunc(firstFunc(input))
        }
    }
    
    func factorial(num: Int) -> Int {
        
        if num == 0 {
            return 1
        } else {
            return num * factorial(num: num - 1)
        }
    }
        
    ///访问String的单个元素
    func greetString() {
        let greeting = "beidixiaoxiong hello!"
        var greetingString: Character
        
        greetingString = greeting[greeting.startIndex]
        print(greetingString)
        
        greetingString = greeting[greeting.index(before: greeting.endIndex)]
        print(greetingString)
        
        //index(:offsetBy:)方法访问字符串中的特定字符
        greetingString = greeting[greeting.index(greeting.startIndex, offsetBy: 2)]
        print(greetingString)
        
//        for newGreeting in greeting {
//            print(newGreeting)
//        }
        
        //切片
        let startSkip = "beidixiaoxiong ".count
        let endSkip = "!".count
        let startIndex = greeting.index(greeting.startIndex, offsetBy: startSkip)
        let endIndex = greeting.index(greeting.endIndex, offsetBy: -endSkip)
        let range = startIndex..<endIndex
        let substring = greeting[range]
        print(substring)
        
        //更方便的切片
        let prefixTest = greeting.prefix(15)
        print(prefixTest)
        let suffixTest = greeting.suffix(1)
        print(suffixTest)

        
    }
    
    /*
     这里的格式说明符是“%4.2f”。这分为三个部分：
     宽度：格式说明符中的第一个数字是宽度，它表示要为该值打印的最小字符数。如果值短于宽度，则在左侧或右侧填充空白，具体取决于指定的理由。在本例中，数字“5”是宽度，它告诉String(format:)至少包含5个字符。3.14只有4个字符，所以它在左边填充了一个空白字符。
     精度：在宽度之后，有一个点，然后是精度。精度表示浮点数小数点后出现的位数。在本例中，设置为2，因此它只包括小数点后的两个数字。
     类型：在宽度和精度之后，您包含一个字符，该字符表示要格式化字符串的类型。在本例中，设置为f，表示十六进制。
     以下是您可以在格式说明符中使用的一些最常见类型的表格：
     %d，%i：整数。
     %o：八进制。
     %x，%X：十六进制。
     %f：浮点。
     %e，%E：指数符号中的浮点。
     %g，%G：指数或十进制符号的浮点，具体取决于值。
     %%：字面%字符。
     */
    ///字符串格式
    func stringFormat() {
        let num = 3.14159265
        let format = String(format: "%4.2f", num)
        print(format)
    }
    
    ///字符串编码
    func stringEncode() {
        let message = "beidixiaoxiong hello"
        let test = message.data(using: .utf8)
        print(test!)
        let stringDemo = String(data: test!, encoding: .utf8)
        print(stringDemo!)
    }
    
    ///正则表达式
    ///正则表达式是一种可以匹配一组字符串的模式
    func regularExpression() {
        let message = "Hello, World! My email address is beidixiaoxiong98@icloud.com"
        let message02 = "Hello, World! My phone number is 155 6745 8997"
        
        //匹配邮箱的
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        //匹配非负整数
        let phoneNumberRegex = "\\d{4}"
        
        if let match =  message.range(of: emailRegex, options: .regularExpression) {
            let email = message[match]
            print(email)
        }
        
        let messagexxx = message.replacingOccurrences(of: emailRegex, with: "*********", options: .regularExpression)
        print(messagexxx)
        
        let regex = try! NSRegularExpression(pattern: phoneNumberRegex, options: [])
        let range = NSRange(location: 0, length: message02.count)
        let modifiedString = regex.stringByReplacingMatches(in: message02, options: [], range: range, withTemplate: "****")
        print(modifiedString)
    }
    
    
    

}
