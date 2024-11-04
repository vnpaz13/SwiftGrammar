// Enum CaseIterable
import Foundation

enum Pet : String,CaseIterable {
    case cat = "cat"
    case dog = "dog"
    case bird = "bird"
}

let petNames : [String] = Pet.allCases.map{$0.rawValue}


for petTypeItem in Pet.allCases {
    print(petTypeItem.rawValue)
}
