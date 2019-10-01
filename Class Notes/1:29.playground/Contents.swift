//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

typealias Time3 = (Int) -> Int

//var myClosure : Time3 {
  //  (number: Int) -> Int in
    //let result = number * 3
   // return resul
//}

//myClosure (5)

let numbers = [98, 79, 83, 100, 60]
let numbersCopied = [98, 79, 83, 100, 60]
numbers.map({
    (number: Int) -> Int in
    let result = number * 3
    return result
})

numbersCopied.map {
    $0 * 3
}

print (numbers)
print (numbersCopied)

var sortedNumbers = numbers.sorted(by:{
    (number1: Int, number2: Int) -> Bool in
    return number1 > number2
})

//CLASSES

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with  \(numberOfSides) sides."
    }
}

var myShape = Shape ()

class NamedShape{
    var numberOfSides = 0
    var name: String
    init (name: String){
        self.name = name
    }
    func simpleDescription()-> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var nameShape = NamedShape (name: "Squre")
nameShape.simpleDescription()

class EquilateralTriangle: NamedShape{
    var sideLength: Double
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double{
        get {
            return 3 * sideLength
        }
        set (myValue){
            sideLength = myValue/3
        }
    }
    
    override func simpleDescription() -> String {
        return "An equlateral triangle with sdies of length \(sideLength)."
    }
}

//var triangle = EquilateralTriangle(side Length: 3.1, name: "a triangle")
//triangle.perimeter
//triangle.perimeter = 15
//print (triangle.sideLength)

class Circle: NamedShape{
    var radius: Double
    init?(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }
}

let failedCircle = Circle(radius: -7, name: "failed circle")
var successfulCircle = Circle(radius: 7, name: "good circle")

successfulCircle?.radius = 8
successfulCircle = failedCircle





