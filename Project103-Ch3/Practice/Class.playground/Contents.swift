import UIKit


class Pet {
    // Attributes -> Data/Variables/Constant
    var name: String
    var age: Int
    var owner: String
    
    // Methods -> Behavior
    init(name: String, age: Int, owner: String){
        self.name = name
        self.age = age
        self.owner = owner
    }
}

let pet1 = Pet(name: "Tato", age: 4, owner: "Fernanda")

print("\(pet1.owner) owns a \(pet1.name) which is \(pet1.age) years old.")


