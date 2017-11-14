import UIKit

// Selling the idea of pretty printable

protocol CustomPrintable: CustomStringConvertible {
    var emoji: String { get }
}

extension CustomPrintable {

    var emoji: String {
        return "📝"
    }

    var description: String {

        var desc: String = "\(type(of: self)) \(emoji)\n"
        let object = Mirror(reflecting: self)

        for property in object.children {
            guard let propertyName = property.label else {
                continue
            }

            desc += "\(propertyName): \(property.value)\n"
        }
        return desc
    }
}

// Custom Printable value type struct
struct User {
    let firstName: String
    let lastName: String
    let age: Int
}

let user = User(firstName: "John", lastName: "Doe", age: 22)
print(user)

extension User: CustomPrintable {
    var emoji: String {
        return "👨🏼‍🚀"
    }
}
