import UIKit


struct User {
    let firstName: String
    let lastName: String
    let age: Int
}

extension User: CustomStringConvertible {
    var description: String {
        return "👤 Name: \(firstName) \(lastName), Age: \((age))"
    }
}

let user = User(firstName: "John", lastName: "Doe", age: 22)
print(user)

