import UIKit
import Combine

var myIntArrayPublisher :Publishers.Sequence<[Int], Never> = [1,2,3].publisher

myIntArrayPublisher.sink(receiveCompletion: { completion in
    switch completion {
    case .finished:
        print("완료")
    case .failure(let error):
        print("실패 : error : \(error)")
    }
    
}, receiveValue : { receiveValue in
    print("값을 받았다. : \(receiveValue)")
})

var mySubscription : AnyCancellable?

var mySubscriptionSet = Set<AnyCancellable>()


var myNotification = Notification.Name("com.apple.customNotification")

var myDefaultPublisher :NotificationCenter.Publisher =
NotificationCenter.default.publisher(for : myNotification)

mySubscription = myDefaultPublisher.sink(receiveCompletion: { completion in
    switch completion {
    case .finished:
        print("Finished")
    case .failure(let error):
        print("Failure : \(error)")
    }
}, receiveValue: { receivedValue in
    print("받은 값 : \(receivedValue)")
})

mySubscription?.store(in: &mySubscriptionSet) // & = in&out 매개변수 변경

NotificationCenter.default.post(Notification(name: myNotification))

mySubscription?.cancel()

// KVO = Key Value Observing

class MyFriend {
    var name = "철수" {
        didSet{
            print("name - didSet() : ", name)
        }
    }
}

var myFriend = MyFriend()
var myFriendSubscription : AnyCancellable = ["영수"].publisher.assign(to: \.name, on: myFriend)
