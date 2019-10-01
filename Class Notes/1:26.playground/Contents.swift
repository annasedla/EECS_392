//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "add some raisins"
case "cucumber", "wait":
    let vegetableComment = "add some raisins"
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it spicy?"
default:
    let vegetableComment = "everything else"
}

//while loop type #1
var n = 2
while n < 100 {
    n = n * 2
}

//while loop type #2
n = 2
repeat {
    n = n * 2
} while n < 2

func greet (name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet (name: "John", day: "Friday")

func greetWithExternalNames  (name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greetWithExternalNames (name:"Tom", day:"Monday")

var array = ["apple", "banana"]
array.insert("orange", at: 1)

vegetable.hasSuffix("le")

//final example
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for  score in scores {
        if score < min {
            min = score
        } else if score > max {
            max = score
        }
        sum += score
    }
    return (min, max, sum)
}

let scores = [98, 79, 83, 100, 60]

let temp = calculateStatistics(scores: scores)

temp.max

func sumOf (numbers: Int ...) -> Int{
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}

sumOf (numbers: 42, 38, 100, 45)
sumOf()

//incremental fn type 1
func makeIncrementer () -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    
    return addOne
}

//incremental fn type 2
let increment = makeIncrementer()
increment(8)
typealias NextNumber = (Int) -> Int

func makeIncrementer1() -> NextNumber {
    let y = 10
    func addOne(number: Int) -> Int {
        return number + y
    }
    return addOne
}

func hasNayMatches (list: [Int], condition: (Int)->Bool) ->  Bool {
    for item in list{
        if condition (item){
            return true
        }
    }
    return false
}

func isEven (number: Int) -> Bool{
    return number % 2 == 0
}







