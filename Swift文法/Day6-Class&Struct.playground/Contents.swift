import UIKit

// Youtuber (data) 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscriberCount: Int
}

var devPark = YoutuberStruct (name: "박교정",
    subscriberCount: 99999 )

var devParkClone = devPark

print("값 넣기 전 devParkClone.name : \(devParkClone.name)")

devParkClone.name = "호롤롤"

print("값 넣은 후 devParkClone.name : \(devParkClone.name)")

print("값 넣은 후 devPark.name : \(devPark.name)")


// class


class Youtuber {
    var name : String
    var subscriberCount : Int
    // 생성자 - 즉 메모리에 올린다
    // init 으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그값을 가진 객체를 만들 수 있다.
    init(name: String, subscriberCount: Int){
        self.name = name
        self.subscriberCount = subscriberCount
    }
}

var devPaz = Youtuber(name : "박교정",
    subscriberCount: 99999 )
var devPazClone = devPaz

print("값 넣기 전 devPazClone.name : \(devPazClone.name)")

devPazClone.name = "호롤롤롤로"

print("값 넣은 후 devPazClone.name : \(devPazClone.name)")

print("값 넣은 후 devPaz.name : \(devPaz.name)")

// struct => '박교정'을 다른종이에 복사 / 영향을 못 끼침
// class => 연결되어 있음 / 서로 연동이 됨








