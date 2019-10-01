//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 HW #1
 */
func returnNumCount(input: String)-> (Int,Int,Int){
    
    let splitString: [String] = input.replacingOccurrences(of: " ", with: "").components(separatedBy: ",")
    
    let mapping: [Int] = splitString.map{Int($0)!}
    let odd = mapping.filter{$0 % 2 == 1}.count
    let even = mapping.filter{$0 % 2 == 0}.count
    let divisibleByThree = mapping.filter{$0 % 3 == 0}.count
    
    return (even, odd, divisibleByThree)
}

//sample output
returnNumCount(input: "1,2,3,4,5,6,7,8,9")

/**
 HW #2
 */
func cat(joiner: String = " ", _numbers: Int...) -> String{
    
    var output: String = ""
    
    for number in _numbers{
        output += String(number)
        output += joiner
    }
    
    let newOutput = output.dropLast(1)
    return String(newOutput)
}

//sample output
cat(joiner:":", _numbers: 1,2,3,4,5,6,7,8,9)
cat(_numbers: 1,2,3)


/**
 HW #3
 */
func fibonacci(n: Int) -> Int{
    var num1 = 0
    var num2 = 1
    
    if n == 0 {
        return 0
    }
    
    else if n == 1 {
        return 1
    }
    
    else {
    for _ in 0 ..< (n - 1) {
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    return num2
    }
}

//sample output
//0,1,1,2,3,5,8,13 <- sequence
fibonacci(n: 1)
fibonacci(n: 2)
fibonacci(n: 90)

/**
 HW #4
 */
struct StudentInfo{
    var studentID: String
    var studentName: String
    var birthDay = DOB()
    var age: Int{
        
        let myDOB = Calendar.current.date(from: DateComponents(year: birthDay.year, month: birthDay.month, day: birthDay.day))!
        let myAge = Calendar.current.dateComponents([.month], from: myDOB, to: Date()).month!
        let years = myAge / (12)
        
        return years
    }
}

struct DOB{
    var year: Int = 0
    var month: Int = 0
    var day: Int = 0
}

//sample output
let DOBInstance = DOB(year: 1996, month: 2, day: 9)
let studentInstance = StudentInfo(studentID: "12345", studentName: "Anna", birthDay: DOBInstance)
print ("Age of student: \(studentInstance.age)")


/**
 HW #5
 */
class Vehicle{
    var model: String
    var doors: Int
    var color: Color
    var wheels: Int
    
    enum Color {
        case red
        case blue
        case white
    }
    
    init(model: String, doors: Int, color: Color, wheels: Int) {
        self.model = model
        self.doors = doors
        self.color = color
        self.wheels = wheels
    }
    
    convenience init(model: String, color: Color, wheels: Int) {
        self.init(model: model, doors: 2, color: color, wheels: wheels)
    }
}

class MotorVehicle: Vehicle {
    var licensePlate: Int
    
    init(licensePlate: Int, model: String, doors: Int, color: Color, wheels: Int){
        self.licensePlate = licensePlate
        super.init(model: model, doors: doors, color: color, wheels: wheels)
    }
}

class Bicycle: Vehicle {
    convenience init(){
        self.init(model: "", doors: 0, color: Color.red, wheels: 2)
    }
}

class Car: MotorVehicle{
    convenience init(licensePlate: Int, model: String, color: Color){
        self.init(licensePlate: licensePlate, model: model, doors: 4, color: color, wheels: 4)
    }
}

