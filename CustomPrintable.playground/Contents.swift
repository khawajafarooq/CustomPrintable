import Foundation


// struct example of Custom Printable
struct User {
    let firstName: String
    let lastName: String
    let age: Int
}

extension User {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

// Pretty Printable of User
extension User: CustomStringConvertible {
    var description: String {
        return "👤 Name: \(fullName), Age: \(age)"
    }
}

let user = User(firstName: "John", lastName: "Doe", age: 22)
print(user)



