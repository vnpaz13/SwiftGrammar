import UIKit // Dictionary 반복

let myFriends = ["a" : 19, "b" : 23, "c" : 30]

for (name, age) in myFriends {
    print("Name: \(name), Age: \(age)")
}

myFriends.forEach { (name: String, age: Int) in
    print("Name: \(name), Age: \(age)")
}

myFriends.keys.forEach { name in
    print("Name: \(name)")
}

myFriends.values.forEach { age in
    print("Age: \(age)")
}
