//
//  UseCodable.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/28.
//

import Foundation


struct UseCodable: Codable {
    let firstName: String
    let lastName: String
    let age: Int
    
    
}

struct UseCodablePerson {
    
    func useCodable() {
        let person = UseCodable(firstName: "chen", lastName: "qingsong", age: 12)
        
        //编码到JSON
        let encoder = JSONEncoder()
        let data = try! encoder.encode(person)
        let jsonString = String(data: data, encoding: .utf8)
        print(jsonString!)
        
        //从JSON解码
        let decoder = JSONDecoder()
        let decoderPerson = try! decoder.decode(UseCodable.self, from: data)
        print(decoderPerson)
        
    }
}
