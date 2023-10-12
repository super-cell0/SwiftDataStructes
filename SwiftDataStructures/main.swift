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
//print(myList[2])

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

func popAndPrint<U: ContainerDemoDelegate>(container: inout U) {
    for _ in 0..<container.itemCount {
        print(container.pop())
    }
}

var intStack = ContainerDemo<Int>()
//intStack.append(item: 56)
//intStack.append(item: 34)
//intStack.append(item: 1)
//popAndPrint(container: &intStack)

//Where子句与Swift泛型一起使用
func popAllAndTestMatch<C1: ContainerDemoDelegate, C2: ContainerDemoDelegate>(
    someContainer: inout C1,
    anotherContainer: inout C2 ) -> Bool where C1.Item == C2.Item, C1.Item: Equatable {
        
        //count
        if someContainer.itemCount != anotherContainer.itemCount {
            return false
        }
        //它通过一个循环从someContainer中pop出元素，并通过条件判断这些元素是否与anotherContainer中弹出的元素相同
        for _ in 0..<someContainer.itemCount {
            if someContainer.pop() != anotherContainer.pop() {
                return false
            }
        }
        
        return true
    }

var stringDemo1 = ContainerDemo<String>()
stringDemo1.append(item: "abc")
stringDemo1.append(item: "dos")
stringDemo1.append(item: "opopop")

var stringDemo2 = ContainerDemo<String>()
stringDemo2.append(item: "abc")
stringDemo2.append(item: "dos")
stringDemo2.append(item: "opop")

//if popAllAndTestMatch(someContainer: &stringDemo1, anotherContainer: &stringDemo2) {
//    print("所有项目都匹配")
//} else {
//    print("并非所有项目都匹配")
//}

var stackDemoThird =  StackDemoThird<String>()
stackDemoThird.push(item: "abc")
stackDemoThird.push(item: "one")
stackDemoThird.push(item: "two")

//print(stackDemoThird[[0, 2]])

/*
let numberArray = [1, 2, 3, 4, 5, 6]
if let firstNum = numberArray.firstDemo(predicate: { $0 % 2 == 0}) {
    print(firstNum)
}

let animals = ["zebra", "hamster", "dog", "cat", "anteater"]
if let firstAnimalsChar = animals.firstDemo(predicate: { $0.count < 3 }) {
    print(firstAnimalsChar)
}
 */

let metaType01 = MetaTypeDemo01.self
//使用元类型动态创建类的实例，访问类型级属性和方法
let instance = metaType01.init()
//instance.start()

//将其类型指定为Vehicle.Type。仅访问协议中定义的功能，而不是汽车中定义的功能。
let metaTypeCar: MetaTypeVehicle.Type = MateTypeCar.self
//使用元类型创建类的实例
let car = metaTypeCar.init()
//调用实例的start()方法
//car.start()


func startDrivable(drivable: DriveableDelegate) {
    drivable.start()
}

//startDrivable(drivable: CarDefinitionProtocol(speed: 9))

let sportCarFuelEfficiency = SportCar.calculateFuelEfficiency(fuel: 50, distance: 500)
//print(sportCarFuelEfficiency)
let sedanFuelEfficiency = Sedan.calculateFuelEfficiency(fuel: 40, distance: 400)
//print(sedanFuelEfficiency)

let truck = Truck()
truck.speed = 120
truck.paint(color: "Pink")
