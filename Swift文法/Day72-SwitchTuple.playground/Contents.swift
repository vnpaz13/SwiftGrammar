// Tuple in Switch

let somePoint = (x: 2, y: 1)

if case (x:2 , y:0) = somePoint {
    print("In Case")
}

func someGuardCheck(somePoint: (x: Int, y: Int)) {
    guard case (x:2, y:0) = somePoint else{
        print("x : 2 , y : 0 is not")
        return
    }
    print("Finish")
}

someGuardCheck(somePoint: somePoint)


switch somePoint {
case(x: 0, y: 0):
    print("Center")
case(_, 0):
    print("in X axis")
case(0, _):
    print("in Y axis")
case(-2...2, -2...2):
    print("Inside")
default:
    print("OutSide")
}
