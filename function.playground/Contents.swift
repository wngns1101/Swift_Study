import UIKit

func sum(a: Int, b: Int) -> Int{
    return a+b
}
print(sum(a: 3, b: 5))

func hello() -> String{
    return "hello"
}
print(hello())

//전달인자 레이블 사용(가독성을 위해)
func greeting(from friend: String, me: String = "gunter"){
    print("hello, \(friend)! I'm \(me)")
}
greeting(from: "철수")

//전달인자 레이블 사용(가독성을 위해)
func sendMessage(from myName: String, to name: String) -> String{
    return "Hello \(name)! I'm \(myName)"
}
sendMessage(from: "Gunter", to: "Json")

//_를 쓰면 전달인자 레이블 사용 안 해도 됨
func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}
sendMessage("이주훈")

//가변 매개변수
func sendMessage(me: String, friends: String...) -> String{
    return "hello, \(friends)! I'm \(me)"
}
sendMessage(me: "Gunter", friends: "Json", "Albert", "Stella")
