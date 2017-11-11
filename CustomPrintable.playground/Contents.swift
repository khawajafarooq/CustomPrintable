import UIKit


struct Point {
    let x: Int, y: Int
}

let p = Point(x: 21, y: 30)
print(String(reflecting: p))


extension Point: CustomDebugStringConvertible {
    var debugDescription: String {
        return "Point(x: \(x), y: \(y))"
    }
}

print(String(reflecting: p))


