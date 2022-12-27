import UIKit

// optional
var name: String?
var optionalName: String? = "Gunter"
print(optionalName)

// optional binding
// 명시적 해제
// !를 사용하면 강제 해제(nil일 경우 프로그램 뻗음 위험)
var number: Int? = 3
print(number)
print(number!)

if let result = number{
    print(result)
}else{
    
}

func test(){
    let number: Int? = 5
    guard let result = number else {
        return
    }
    print(result)
}
test()

// 묵시적 해제
// 조건문으로 비교할 시 옵셔널을 벗겨줌
let value: Int? = 6
if value == 6{
    print("value가 6입니다.")
}else{
    print("value가 6이 아닙니다")
}

let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
