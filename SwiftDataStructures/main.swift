//
//  main.swift
//  SwiftDataStructures
//
//  Created by mac on 2023/8/24.
//

import Foundation


let numbers = [111, 325, 56, 10, 68, 860, 99, 105, 450]
let testString = "h((e)llo(world)()"

let timeComplexity = TimeComplexity()
//print(timeComplexity.logarithmicTime(value: 5, onArray: numbers))
//print(timeComplexity.sumFromOne(n: 10000))

let spaceComplexity = SpaceComplexity()
//spaceComplexity.printSorted(onArray: numbers)
//spaceComplexity.optimizationSorted(onArray: numbers)

let swiftStandardLibarry = SwiftStandardLibarry()
//swiftStandardLibarry.addPeopel()

let stackOperation = StackContent()
//stackOperation.exampleUserStack()
//stackOperation.exampleInitArray()
//stackOperation.exampleInitInt()

let comprehensive = ComprehensiveCase()
//comprehensive.printInReverse(onArray: numbers)
//print(comprehensive.checkParentheses(string: testString))

let createNode =  CreateNode()
//print(createNode.createLinkNode())

var listTest = LinkListTest<Int>()
listTest.append(value: 1)
listTest.append(value: 2)
listTest.append(value: 3)
listTest.append(value: 4)
listTest.append(value: 5)

//listTest.printList()
//
//listTest.delete(value: 4)
//listTest.printList()
//
//(listTest.find(value:4) != nil) ? print("yes") : print("no")

//listTest.reverse()
//listTest.printList()

var testArray = [5, 5, 6, 4, 2, 8, 10, 43, 4, 5]
let algorithmList = AlgorithmList()
let newArray = algorithmList.repeatOnNum(onValue: testArray)
//print(newArray)

let leetcode01 = LeetCode01()
var nums = [2, 7, 11, 15]
let target = 9
let newIndex = leetcode01.twoSum01(nums: nums, target: target)
//print(newIndex)
let newIndex1 = leetcode01.twoSum02(nums: nums, target: 17)
//print(nums.count)
//print(nums[0])
//print(newIndex1)
let new03 = leetcode01.twoSum03(nums: nums, target: 26)
//print(new03)


//numTo[98] = 4
//print(numTo)

/*
 var numToIndex = [Int: Int]()

 // 向字典中添加一些数据
 numToIndex[2] = 0
 numToIndex[7] = 1
 numToIndex[11] = 2

 // 要查找的补数
 let complement = 7
 print(numToIndex)
 // 使用 if let 来检查补数是否存在于字典中
 if let complementIndex = numToIndex[complement] {
     print("找到了补数 \(complement) 对应的索引：\(complementIndex)")
 } else {
     print("补数 \(complement) 不存在于字典中")
 }

 */

//var list = LinkList<Int>()
//list.push(value: 1)
//list.push(value: 2)
//list.push(value: 3)
//list.push(value: 4)
//list.printList()
//
//var middleNode = list.node(index: 2)!
//middleNode = list.insert(value: 89, node: middleNode)
//list.printList()
//
//list.pop()
//list.printList()


let cookbookHigher = CookbookHigher()
let composeFun = cookbookHigher.compose(firstFunc: cookbookHigher.addTwo(num:), secondFunc: cookbookHigher.mulThree(num:))
//print(composeFun(5))
let factorial = cookbookHigher.factorial(num: 5)
//print(factorial)
//cookbookHigher.greetString()
//cookbookHigher.stringFormat()
//cookbookHigher.stringEncode()
//cookbookHigher.regularExpression()

let swiftTuple = CreateTuple()
//swiftTuple.myTuple()
//swiftTuple.decompose()
//let myTuple = swiftTuple.returnTuple()
//print(myTuple.0)
//print(myTuple.1)
//swiftTuple.tupleInSwitch()
//swiftTuple.whereTuple()
//swiftTuple.shufflingTuple()


let swiftSet = SwiftSet()
//swiftSet.useSet()
//swiftSet.useArray()

let swiftCollection = SwiftCollection()
//swiftCollection.testPrint()
//swiftCollection.lazyCollection()
//swiftCollection.declareEnum()

let myClass = MyClass()
let myClass01 = MyClass(name: "chen", property: 99)
//myClass.name = "chencc"
//print(myClass.name)
//myClass.printName()
//myClass.mySoredProperty = 10
//print(myClass.mySoredProperty)
myClass.mySoredProperty = 20
//print(myClass.myComputedProperty)

myClass.myComputedProperty = 50
//print(myClass.mySoredProperty)

var myPoint01 = Point(x: 0.0, y: 0.0)
var myPoint = Point(x: 3.0, y: 4.0)
//myPoint.x = 4.0
//print(myPoint.x)
let distance = myPoint01.distance(point: myPoint)
//print(distance)

let myList = MyList(items: ["apple", "banana", "orange"])
myList[1] = "mango"
//print(myList.items)

let myCar = Car(wheels: 4, weight: 1000, maxSpeed: 200, numberOfDoors: 4)
//print(myCar.description())
//print((myCar.numberOfDoors))

func drawShape(shape: ShapeDemo) {
    shape.draw()
}
//drawShape(shape: Circle())
//drawShape(shape: Square())

let myPi = 3.14159265
//print(myPi.roundToDecimal(fractionDigits: 4))

let mySize = CGSize(width: 4.0, height: 6.0)
//print(mySize.area)


let person = Person(name: "beidixiaoxiong", address: Address(street: "人民南路", city: "成都"))
let streetKeyPath = \Person.address.street//创建对象特定属性的键路径 它会创建指向Address结构street属性的密钥路径
let street = person[keyPath: streetKeyPath]
//print(street)

let result = Math.square(number: 4)
//print(result)

let c1 = Counter()
//print(Counter.myCount)

let redColor = DemoCar()
redColor.color = "RED"
DemoCar.meaufacturer = "TOYOTA"
//print(redColor.describeColor())
//print(DemoCar.describeMeaufacturer())

let setSings = SetSings.shared
setSings.fontSize = 30.0
//print(SetSings.shared.fontSize)


var stackStings = StackDemo<String>()
stackStings.push(item: "hello")
stackStings.push(item: "chen")
//print(stackStings.items)
//if let item = stackStings.pop() {
//    print(item)
//}

var stackInts = StackDemo<Int>()
stackInts.push(item: 4)
stackInts.push(item: 89)
//if let item = stackInts.pop() {
//    print(item)
//}


let flight = Flight(flyingObject: Bird())
//flight.flyingObject.fly()
