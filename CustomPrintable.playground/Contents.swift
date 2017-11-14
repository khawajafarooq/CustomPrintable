import UIKit

// Layman example of CustomStringConvertible
struct AnotherUser {
    let name: String
    let gender: String
}

extension AnotherUser: CustomStringConvertible {
    var description: String {
        
        var emoji = gender.lowercased() == "male" ? "👨🏼": "👩🏼"
        return """
        AnotherUser
        name: \(name)
        gender: \(emoji)
        """
    }
}

let aUser = AnotherUser(name: "Chris Angel", gender: "Male")
print(aUser)


// CustomPrintable pretty printable
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

extension User: CustomPrintable {
    var emoji: String {
        return "👨🏼‍🚀"
    }
}

let user = User(firstName: "John", lastName: "Doe", age: 22)
print(user)


