//
//  FibonacciTest.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

import Foundation


class FibonacciTest {
    
    func fib01(a: Int) -> Int {
        if a == 0 { return 0}
        if a == 1 { return 1}
        return fib01(a: a - 1) + fib01(a: a - 2)
    }
    

    func fib02(a: Int) {
        var b = 1
        var c = 1
    
        for _ in b...a {
            b = c
            c = b + c
            print(b)
        }
    }


    func fib03(f: Int) -> Int {
        if f == 0 {
            return 1
        } else {
            var a: Int = 0
            var b: Int = 1
            for _ in 1..<f {
                a = b
                b = a + b
            }
            return a
        }
    }

    func fib04(f: Int) -> [Int] {
        var fibs = [0, 1]
        if f <= 1{
            return fibs
        }
        for _ in 0...f - 2 {
            let f = fibs[fibs.count - 2]
            let l = fibs.last!
            fibs.append(f + l)
            //print(index)
        }
        return fibs
    }

}
