//
//  swiftTuple.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/9/16.
//

import Foundation

class CreateTuple {
    
    func myTuple() {
        let myTuple = ("hello", 42, true)
        let myTuple01: (String, Int, Bool) = ("Hello", 42, true)
        
        print(myTuple.0)
        print(myTuple01.0)
        
        let (firstElement, secondElement, thirdElement) = myTuple
        print(firstElement, secondElement, thirdElement)

    }
    
    func decompose() {
        //分解元组
        let myTuple02 = (1, "tuple")
        let (num, str) = myTuple02
        print(num)
        print(str)
        
        if case (_, "tuples") = myTuple02 {
            print("这个元组包含一个tuple")
        } else {
            print("不包含这个元素")
        }

    }
    
    //可以使用<、>、<=和>=等比较运算符来比较元组
    
    func nameTuple() {
        let myTuple = (name: "chen", num: 2, thisType: true)
        print(myTuple.thisType) // true
    }
    
    func returnTuple() -> (Int, String) {
        return (1, "auto")
    }
    
    func getNameTuple() -> (num: Int, fruit: String) {
        return (num: 1, fruit: "apple")
    }
    
    func tupleInSwitch() {
        let tuple = (1, "apple")
        
        switch tuple {
        case (0, "apple"):
            print("0")
        case (1, "apple"):
            print("1")
        default:
            break
        }
        
    }
    
    func whereTuple() {
        let tuple = (1, "apple")

        switch tuple {
        case (let value, "apple"):
            print("This is an apple with a value of \(value).")
        case (_, "banana"):
            print("This is a banana.")
        default:
            print("This is neither an apple nor a banana.")
        }

    }
    
    func shufflingTuple() {
        let tuple = (1, "apple", true)
        
        let newTuple = (tuple.2, tuple.0, tuple.1)
        print(newTuple)
    }
    
    
}
