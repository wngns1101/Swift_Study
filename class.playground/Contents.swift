import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
    
    //생성자
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    init(age: Int){
        self.name = "albert"
        self.age = age
    }
    
    // 메모리가 해제될 때 실행
    deinit {
        print("deinit user")
    }
    
    func introduce(){
        print("name \(name) age \(age)")
    }
}

var user = Dog(name: "gunter", age: 23)
var user2 = Dog(age: 20)
var user3: Dog? = Dog(age: 23)
user.introduce()
user2.introduce()
user3 = nil
