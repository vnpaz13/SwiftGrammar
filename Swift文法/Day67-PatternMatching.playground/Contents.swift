let statusCode = 383

if (300..<500).contains(statusCode) {
    print("Included!!!")
}
if (400...500) ~= statusCode {
    print("Included!!!")
} else {
    print("Not Included!!!")
}

// .contains(###) 과 ~= ### 은 같다
