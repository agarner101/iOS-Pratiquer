//Simple playground showing various Swift language fundamentals
//Andrew Garner
//July 9, 2018

import UIKit

var str = "Hello, playground"
str = "Hello, Swift!"
let constStr = str

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

// Collection Types - p34
var arrayOfInts1: Array<Int>
var arrayOfInts2: [Int] //same as above

var capitalsByCountry1: Dictionary<String, String>
var capitalsByCountry2: [String:String] //same as above

var winningLotteryNumbers: Set<Int>

//Literals and subscripting - p35
let number = 42
let fmStation = 91.1

var countingUp = ["one", "two"]
countingUp.append("three")
countingUp.count
let secondElement = countingUp[1]
let nameByParkingSpace1 = [15: "Andre", 16: "Lo"]

//Initializers - p36
let emptyString = String()
emptyString.isEmpty
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>();

let defaultNumber = Int()
let defaultBool = Bool()

let aNumber = 42
let meaningOfLife = String(aNumber)

let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

//Optionals - p38
var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?

var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.2
reading3 = 9.7

//Unsafe forcible unwrapping
//let avgReading = (reading1! + reading2! + reading3!) / 3
let avgReading: Float
if let r1 = reading1, let r2 = reading2, let r3 = reading3 {
    avgReading = (r1 + r2 + r3) / 3
} else {
    print("Instrument reported a nil reading")
}

//Subscripting Dictionaries - p40
let nameByParkingSpace = [12: "Andre", 21: "Lo"]
let space12Assignee: String? = nameByParkingSpace[12]
let space42Assignee: String? = nameByParkingSpace[42]

if let space21Assignee = nameByParkingSpace[21] {
    print("Space 21 is assigned to", space21Assignee)
}

//Loops and String interpolation - p40
var someArray = ["one", "two", "three"]
let range = 0..<someArray.count
for i in range {
    let string = countingUp[i]
    print(string)
}
//more direct version of the above
for string in someArray {
    print(string)
}

//Same as above but gives tuple of index and values
for (i, string) in someArray.enumerated() {
    print(i, string)
}

//String interpolation
let someDict = [6: "Hello", 10: "World"]
for (index, word) in someDict {
    print("Index \(index): \(word)")
}

//Enumerations and the Switch Statement - p42
enum PieType {
    case apple
    case cherry
    case pecan
}

let favoritePie = PieType.cherry
let name : String
switch favoritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
default:
    name = "???"
}

let macOSVersion: Int = 13
switch macOSVersion {
case 0:
    fallthrough
case 1...8:
    print("A big cat")
case 9...13:
    print("California")
default:
    print("I don't know what \(macOSVersion) is)")
}

enum Fruit: Int {
    case apple = 3
    case cherry
}

let fruitRawValue = Fruit.cherry.rawValue
if let fruitType = Fruit(rawValue: fruitRawValue) {
    print(fruitType)
}
