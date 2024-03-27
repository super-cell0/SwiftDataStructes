//
//  DoCatch.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation


enum SimpleError: Error {
  case somethingWentWrong
}

class DoCatch {
    
    func doSomething() throws -> String {
      if true {
        throw SimpleError.somethingWentWrong
      }
      return "Success!"
    }
    
}
