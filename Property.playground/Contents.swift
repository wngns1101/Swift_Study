import UIKit

struct Dog {
    // 저장 프로퍼티
    var name: String
    let gender: String
}

var dog = Dog(name: "gunter", gender: "Male")
dog.name = "이주훈"

    // 구조체는 값 타입이므로 변수를 상수로 선언하면 값을 못 바꿈
let dog2 = Dog(name: "gunter", gender: "Male")

class Cat {
    // 저장 프로퍼티
    var name: String
    let gender: String
    
    init(name: String, gender: String){
        self.name = name
        self.gender = gender
    }
}

    // 클래스는 참조 타입이므로 변수를 상수로 선언해도 값을 바꿀 수 있음
let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name)

struct Stock {
    var averagePrice: Int
    var quantity: Int
    // 연산 프로퍼티
    var purchasePrice: Int{
        get {
            return averagePrice * quantity
        }
        set(newPrice){
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock.purchasePrice)
stock.purchasePrice = 3000
print(stock.averagePrice)


class Account {
    var credit: Int = 0 {
        willSet{
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet{
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

struct SomeStructure{
    // 타입 프로퍼티
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int{
        return 1
    }
}
SomeStructure.storedTypeProperty
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
