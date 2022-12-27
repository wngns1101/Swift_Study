import UIKit

struct User {
    var nickName: String
    var age: Int
    
    func information(){
        print("\(nickName) \(age)")
    }
}

var user = User(nickName: "Gunter", age: 23)

user.nickName
user.nickName = "albert"
user.information()
