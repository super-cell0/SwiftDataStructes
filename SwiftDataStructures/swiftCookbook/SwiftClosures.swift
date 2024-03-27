//
//  SwiftClosures.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/10/23.
//

import Foundation

//闭包是自包含的代码块
//闭包的一个关键特征是，它们可以作为参数传递给函数，就像任何其他类型一样
class SwiftClosures {
    let addTwoNum = { (a: Int, b: Int) -> Int in
        return a + b
    }
    
    func operateOnArray(numbers: [Int], operation: (Int) -> Int) -> [Int] {
        return numbers.map(operation)
    }
    
    //使用Swift闭包捕获值
    //需要注意的是，如果定义闭包后修改捕获的变量，则闭包将使用更新的值。如果在变量修改后调用闭包，这可能会导致意外行为。
    //为了避免这种情况，您可以使用let关键字将捕获的变量定义为常量，这将防止它被修改
    func demoClosure(a: Int) {
        let x = 10
        let add = { a in
            return a + x
        }
        print(add(a))
    }
    
    
}

class SpaceExplorer {
    
  var name: String
  var currentPlanet: String
  var onPlanetChanged: (() -> ())?

  init(name: String, currentPlanet: String) {
    self.name = name
    self.currentPlanet = currentPlanet
  }

  func travelToPlanet(planet: String) {
    self.currentPlanet = planet
    onPlanetChanged?()
  }

  deinit {
    print("Houston, we have a problem...")
  }
    
    
}

class MissionControl {
    
  let explorer: SpaceExplorer
  var planetChangedHandler: (() -> ())?

  init(explorer: SpaceExplorer) {
    self.explorer = explorer
    self.planetChangedHandler = { [weak self] in
        print("\(self?.explorer.name) has landed on \(self?.explorer.currentPlanet)!")
    }
    self.explorer.onPlanetChanged = planetChangedHandler
  }

  deinit {
    print("Mission terminated.")
  }
    
    
}

