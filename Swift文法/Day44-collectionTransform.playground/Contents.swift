import UIKit // Collection 간 변형

let numbers = [1,1,1,5,5,8,9,6,6]
let uniqueNumbers = Set(numbers)

uniqueNumbers

var uniqueNumbersArranged = Array(uniqueNumbers)
uniqueNumbersArranged.sort()
