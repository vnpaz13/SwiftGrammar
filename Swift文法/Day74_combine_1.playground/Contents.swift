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
}, receiveValue: {receivedValue in
    print("값을 받았다. : \(receivedValue)")
})

var mySubscription : AnyCancellable?

var mySubscriptionSet = Set<AnyCancellable>()

var myNotification = Notification.Name("www.apple.com.customNotification")

var myDefaultPublisher = NotificationCenter.default.publisher(for: myNotification)

mySubscription = myDefaultPublisher.sink(receiveCompletion: { completion in
    switch completion {
    case .finished:
        print("완료")
    case .failure(let error):
        print("실패 : error : \(error)")
    }
}, receiveValue: {receivedValue in
    print("받은 값 : \(receivedValue)")
})

mySubscription?.store(in: &mySubscriptionSet)

NotificationCenter.default.post(Notification(name: myNotification))
NotificationCenter.default.post(Notification(name: myNotification))
NotificationCenter.default.post(Notification(name: myNotification))

mySubscription?.cancel()

// KVO - Key Value Observing

class MyFriend {
    var name = "AAA" {
        didSet{
            print("name - didSet() : ", name)
        }
    }
}

var myFriend = MyFriend()
var myFriendSubscription : AnyCancellable = ["ABC"].publisher.assign(to: \.name, on: myFriend)
