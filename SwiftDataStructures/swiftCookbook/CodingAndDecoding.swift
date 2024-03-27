//
//  CodingAndDecoding.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/27.
//

import Foundation


//JSON对象:
/*
 {
 "name": "John Doe",
 "age": 30,
 "email": "johndoe@example.com",
 "address": {
 "street": "123 Main St.",
 "city": "San Francisco",
 "state": "CA",
 "zip": "94109"
 }
 }
 
 */

//JSON数组:
/*
 [
 {
 "name": "John Doe",
 "age": 30,
 "email": "johndoe@example.com"
 },
 {
 "name": "Jane Doe",
 "age": 28,
 "email": "janedoe@example.com"
 }
 ]
 
 */


struct Car02: Codable {
    let make: String
    let model: String
    let year: Int
    let color: String
}

struct Car03: Codable {
    let make: String
    let model: String
    let year: Int
    let color: String
    
    //解码时处理自定义键
    enum CodingKeys: String, CodingKey {
        case make = "manufacturer"
        case model = "vehicle_model"
        case year
        case color
    }
}

class CodingDemo {
    
    //Encoding to JSON 编码为JSON
    func demoCode() {
        let car = Car03(make: "大众", model: "IQ4", year: 2023, color: "pink")
        let encoder = JSONEncoder()
        let data = try! encoder.encode(car)
        let jsonSting = String(data: data, encoding: .utf8)
        print(jsonSting!)
    }
    
    // Decoding from JSON 从JSON解码
    func DecodingJSON() {
        let car = Car03(make: "大众", model: "IQ4", year: 2023, color: "pink")
        let encoder = JSONEncoder()
        let data = try! encoder.encode(car)
        
        let decoder = JSONDecoder()
        let decodedCar = try! decoder.decode(Car03.self, from: data)
        print(decodedCar)
    }
    
}

//MARK: - 在Swift中解码数组
//在Swift中解码数组时，您正在将JSON风格的数组数据结构转换为Swift对象。

/*
 
 [
 {
 "make":"Tesla",
 "model":"Model S",
 "year":2020,
 "color":"Red"
 },
 {
 "make":"Toyota",
 "model":"Camry",
 "year":2019,
 "color":"Silver"
 }
 ]
 
 */

struct Car04: Codable {
    let make: String
    let model: String
    let year: Int
    let color: String
    
}

class DecodingDemo {
    
    func decodingDemo() {
        
        let jsonData = """
[
  {
    "make": "Tesla",
    "model": "Model S",
    "year": 2020,
    "color": "Red"
  },
  {
    "make": "Toyota",
    "model": "Camry",
    "year": 2019,
    "color": "Silver"
  }
]
""".data(using: .utf8)!
        
        let decoder = JSONDecoder()
        let cars = try! decoder.decode([Car04].self, from: jsonData)
        print(cars)
        let modeValue = cars.map { $0.model}
        print(modeValue)
        
    }
    
    //解码时处理缺失值
    func missingValues() {
        let jsonData = """
        [
          {
            "make": "Toyota",
            "model": "Camry",
            "year": 2019,
          }
        ]
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        let cars = try! decoder.decode([Car05].self, from: jsonData)
        print(cars)
        
    }
    
    
}


//MARK: - 在Swift中解码时处理自定义键和缺失值
//关于解码期间处理缺失值，Swift提供了decodeIfPresent方法，该方法允许解码可选值，如果JSON数据中不存在该值，则返回nil
struct Car05: Codable {
    let make: String
    let model: String
    let year: Int
    let color: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.make = try container.decode(String.self, forKey: .make)
        self.model = try container.decode(String.self, forKey: .model)
        self.year = try container.decode(Int.self, forKey: .year)
        self.color = try container.decodeIfPresent(String.self, forKey: .color)
    }
    
}

