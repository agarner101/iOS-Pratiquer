// Swift Programming Language (4.1)
// Andrew Garner
// July 14, 2018

import UIKit

print("Hello, world!")

/// Simple Values

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Experiment
let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthlabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

// Experiment
let someName = "Andrew"
let heightFt = 6.5
print("\(someName) is \(heightFt) ft tall")

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "Bottle of water"

var occupations = [
    "Malcolm" : "Captain",
    "Lolo" : "Programmer"
]

occupations["Jim"] = "Dog Trainer"

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

/// Control Flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print("Team Score = \(teamScore)")

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let y where y.hasSuffix("pepper"):
    print("It is a spicy \(y)?")
default:
    print("Everything tastes good in soup")
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 26],
]

var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if (number > largest) {
            largest = number
            largestKind = kind
        }
    }
}

print("Largest value: \(largest). From: \(largestKind)")

var n = 2
while n < 100 {
    n *= 2
}
print("n: \(n)")

var m = 2
repeat {
    m *= 2
} while m < 100
print("m: \(m)")

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

for i in 0...4 {
    print("i: \(i)")
}

//Functions and Closures
func greet(person: String, lunchSpecial: String) -> String {
    return "Hello \(person), today's special is \(lunchSpecial)"
}

var greetResult = greet(person: "Bob", lunchSpecial: "Spaghetti")
print(greetResult)





