//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*enum Rank: Int{
    typealias RawValue = <#type#>
    
    
}*/

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Clubs:
            return "clubs"
        case .Diamonds:
            return "diamonds"
        case .Hearts:
            return "hearts"
        case .Spades:
            return "spades"
        }
    }
}

var hearts = Suit.Hearts
hearts.simpleDescription()

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var producBarcode = Barcode.upc (8, 85909, 51226, 3)

enum ArithmeticExpression{
    case Number (Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
    
    func evaluate(_ expression: ArithmeticExpression) -> Int {
        switch expression {
        case let .Number(value):
            return value
        case let .Addition(left, right):
            return evaluate(left) + evaluate(right)
        case let .Multiplication(left, right):
            return evaluate(left) * evaluate(right)
        }
    }
}


