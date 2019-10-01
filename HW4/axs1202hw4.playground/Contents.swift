//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func squareMatrix(input: String)-> (String){
    
    let splitString: [String] = input.replacingOccurrences(of: ";", with: "").components(separatedBy: " ")
    let mapping: [Double] = splitString.map{Double($0)!}
    
    let rows =  input.components(separatedBy:";")
    let n: Int = rows.count

    var array = [[Double]](repeating: [Double](repeating: 0, count: n), count: n)
    var resArray = [[Double]](repeating: [Double](repeating: 0, count: n), count: n)
    var returnString: String = ""

    
    /* placing values into array */
    for i in 0 ..< n {
        for j in 0 ..< n {
            array[i][j] = mapping [i*n + j]
            print (array[i][j])
        }
    }
    
    /* squaring values */
    for i in 0 ..< n {
        for j in 0 ..< n {
            for k in 0 ..< n {
                resArray[i][j] += array[i][k] * array[k][j]
            }
            returnString = returnString + (String)(resArray[i][j]) + " "
        }
        returnString = returnString + "; "
    }
    return returnString
}

squareMatrix(input: "1.0 2.0 3.0; 4.0 5.0 6.0; 7.0 8.0 9.0")


