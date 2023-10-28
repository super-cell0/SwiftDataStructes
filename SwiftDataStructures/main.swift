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
//truck.speed = 120
//truck.paint(color: "Pink")

let john = Persion(name: "John")
let dog = Dog(name: "Spot")
//print(john.sayHello())
//print(dog.sayHello())

let vehicles: [MovableDelegate] = [CarPOP(), TrainPOP()]
//for mode in vehicles {
//    mode.move()
//}

var intContainer = IntContainer()
intContainer.add(item: 4)
intContainer.add(item: 989)
//print(intContainer.items)

var stringContainer = StringContainer()
stringContainer.add(item: "hello")
stringContainer.add(item: "chen")
//print(stringContainer.items)


let myClassSecond1 = MyClassSecond(name: "A")
let myClassSecond2 = MyClassSecond(name: "V")
//print(myClassSecond1.isEqual(other: myClassSecond2))

let student = Student()
let school = School()
school.delegate = student
//school.startClass()
//school.endClass()


var myObject: MyClassThird? = MyClassThird(name: "object1")
//myObject = nil


//每个子对象都有一个对父对象的弱引用，由弱变量parent: parent？ 属性表示。
//每个Parent对象都有一个对它的子对象的强引用，由var children: [Child]属性表示。
var parent: Parent? = Parent(name: "Sandy")
parent!.addChild(name: "chen")
parent!.addChild(name: "zhang")
parent!.addChild(name: "wang")

//if let parent = parent {
//    for mode in parent.children {
//        let childName = mode.name
//        print(childName)
//    }
//}

var home: Home? = Home(address: "123 Main St")
var chen: PersonSecond? = PersonSecond(name: "Chen", home: home!)
//chen = nil
//home = nil

//var jediLight: Jedi? = Jedi()
//print("Jedi Created")
//print("第一次使用光剑")
//let lightSaberColor = jediLight!.lightsaber.color
//jediLight = nil

//内存泄漏
//var parentM: ParentMemory? = ParentMemory(name: "chen")
//parentM!.addChild(name: "z")
//parentM!.addChild(name: "f")
//parentM = nil

//var wizard: Wizard? = Wizard(name: "Harry Potter")
////通过在捕获对对象的引用时使用weak关键字，闭包不再增加对象的引用计数，并且ARC可以解除对象的分配。
//wizard?.spell = { [weak wizard] in
//    print("\(wizard?.name ?? " ") casts Expelliarmus ")
//}
//wizard = nil



let doCatch = DoCatch()
//do {
//    let result = try doCatch.doSomething()
//    print(result)
//} catch SimpleError.somethingWentWrong {
//    print("Something went wrong")
//} catch {
//    print("Error: (otherError)")
//}
//

let numbersClosure = [1, 2, 3, 4, 5]
let swiftClosure = SwiftClosures()
let squaredNumber = swiftClosure.operateOnArray(numbers: numbersClosure) {
    return $0 * $0
}
//print(squaredNumber)

//swiftClosure.demoClosure(a: 6)

//var explorer: SpaceExplorer? = SpaceExplorer(name: "Neil Armstrong", currentPlanet: "Earth")
//var missionControl: MissionControl? = MissionControl(explorer: explorer!)
//explorer!.travelToPlanet(planet: "Moon")
//explorer = nil
//missionControl = nil


//let swiftAutoClosure = SwiftAutoClosure()
//print("start")
//swiftAutoClosure.delayedPrint(message: "hello", delay: 2, closure: {
//    print("323")
//})
//print(swiftAutoClosure.delayedPrint(message: "hello", delay: 2, closure: print("helloo")))

let vector1 = Vector2D(x: 1, y: 2)
let vector2 = Vector2D(x: 3, y: 4)
let vector3 = vector1 + vector2
//print(vector3)

let person1 = SwiftEquableAndHashable(name: "chen", age: 30)
let person2 = SwiftEquableAndHashable(name: "chen", age: 30)
let person3 = SwiftEquableAndHashable(name: "liu", age: 20)
//print(person1 == person2)
//print(person2 == person3)
let personDict = [person1: "uno", person3: "dos"]
//print(personDict[person1]!)

let point01 = Point01(x: 2, y: 3)
let point02 = Point01(x: 6, y: 5)
let point3 = point01 + point02
//print(point3.x)

let point001 = Point02(x: 1, y: 2)
let point002 = Point02(x: 3, y: 4)
let point003 = Point02(x: 1, y: 3)
//print(point001 < point002)
//print(point001 == point003)
//print(point002 > point003)

let matrix1 = Matrix(matrix: [[1, 3, 2], [3, 4, 5]])
let matrix2 = Matrix(matrix: [[2, 0, 2], [1, 2, 4]])
let matrix3 = matrix1 * matrix2
//print(matrix3.matrix)

let matrixSubscript = MatrixSubscirpt(matrix: [[1, 6], [3, 4]])
//print(matrixSubscript[0, 1])
matrixSubscript[1, 1] = 199
//print(matrixSubscript.matrix)

var lightSwitch = LightSwitch(on: true)
//print(lightSwitch.on)
//lightSwitch = !lightSwitch
//print(lightSwitch.on)

//
//没有1，2这段代码在大多数情况下并不会报错。但是，如果需求是让 ! 运算符能够作用于 LightSwitch 对象的 on 属性，那么您需要像之前那样在类中定义一个前缀运算符函数。
//如果不这样做1，2，那么 ! 运算符将会作用于 LightSwitch 对象本身，而不是其 on 属性。这可能会导致一些意想不到的结果，因为 ! 运算符通常用于逻辑否定，而不是对属性进行操作。
//var lightSwitch = LightSwitch(on: true)
//print(lightSwitch.on)
//print(!lightSwitch.on)

//
//var intCounter = IntCounter(tag: 0)
//let a = ++intCounter
//print(a.tag)            //1
//print(intCounter.tag)   //1
//
//let b = intCounter++
//print(b.tag)           //2 引用同一个对象的内存地址。因此，对 intCounter 的修改会影响原始对象的值
//print(intCounter.tag)  //2
//
//print("-------------------------")
//
////后缀递增操作符（++）应该是在现有值的基础上增加 1，而不是创建一个新的副本并增加 1
////会创建一个新的副本，而不是引用原始结构体的内存地址。因此，对结构体的修改不会影响原始结构体的值
//var counter = IntCounter01(count: 0)
//let aa = ++counter
//print(aa.count)       // 1
//print(counter.count)  // 1
//
//let bb = counter++
//print(bb.count)       // 1
//print(counter.count)  // 2

let left = OptionalSting(value: "hello")
let right = OptionalSting(value: nil)
let result01 = left ?? right
//print(result01.value!)

let left01 = BoolWrapper(true)
let right01 = BoolWrapper(false)
var result02 = left01 && right01
//print(result02.value) // false
//result02 = left01 || right01
//print(result02.value) // true

let library = [
  Song(name: "Never Gonna Give You Up", artist: "Rick Astley"),
  Movie(name: "The Matrix", director: "Wachowski"),
  Song(name: "Smooth Criminal", artist: "Michael Jackson"),
  Movie(name: "Inception", director: "Christopher Nolan"),
  Song(name: "Billie Jean", artist: "Michael Jackson"),
  Movie(name: "The Dark Knight", director: "Christopher Nolan"),
]

//可以使用as?操作员执行类型检查并将对象降格为特定类型。如果类型检查失败，表达式返回零
//for item in library {
//    if let movie = item as? Movie {
//        print("Movie: \(movie.name), Director: \(movie.director)")
//    } else if let song = item as? Song {
//        print("Song: \(song.name), Artist: \(song.artist)")
//    }
//}

let song = Song(name: "Shake it Off", artist: "Taylor Swift")
let movie = Movie(name: "Avatar", director: "James Cameron")

var library01 = [song, movie]

//for item in library01 {
//    if let mediaItem = item as? MediaItem {
//        print("MediaItem name: \(mediaItem.name)")
//    }
//}

let library02 = [
    Movie(name: "Avatar", director: "James Cameron"),
    Song(name: "Shake it Off", artist: "Taylor Swift")
]

//for item in library02 {
//    if item is Song {
//        print("this is song")
//    } else if item is Movie {
//        print("this is movie")
//    }
//}
//

//使用guard语句执行类型检查并将对象向下转换特定类型的示例
//如果类型检查失败，则执行continue语句，循环的下一次迭代开始。如果类型检查成功，对象将降格为特定类型，并打印适当的消息。
//for item in library02 {
//    guard let song = item as? Song else { continue }
//    print("Song: \(song.name), Artist: \(song.artist)")
//}

let anyDemo = AnyTypeCasting()
//anyDemo.demoAny()

let objectsArray: [AnyObject] = [CarAny(), SongAny(), CarAny()]
//for item in objectsArray {
//    if let car = item as? CarAny {
//        print(car)
//    } else if let song = item as? SongAny {
//        print(song)
//    } else {
//        print("unknown type")
//    }
//}

let codingDemo = CodingDemo()
//codingDemo.demoCode()
//codingDemo.DecodingJSON()

let decodingDemo = DecodingDemo()
//decodingDemo.decodingDemo()
//decodingDemo.missingValues()


let a = UseEquatable(name: "John Doe", age: 30)
let b = UseEquatable(name: "Jane Doe", age: 25)
let c = UseEquatable(name: "John Doe", age: 30)
//print(a == b)
//print(a == c)

let human1 = UseHashable(firstName: "chen", lastName: "qingsong", age: 12)
let human2 = UseHashable(firstName: "liu", lastName: "kexin", age: 22)

var personDict1: [UseHashable: String] = [:]
personDict1[human1] = "teacher"
personDict1[human2] = "doctor"
//print(personDict1.map {$0.value})

let useComparable1 = UseComparable(firstName: "chen", lastName: "qingsong")
let useComparable2 = UseComparable(firstName: "liu", lastName: "kexin")
//print(useComparable1 < useComparable2)

let useCodable = UseCodablePerson()
//useCodable.useCodable()

//for i in UseSquence(start: 0, end: 5) {
//    print(i)
//}
