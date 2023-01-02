import UIKit

var value = 0
assert(value == 0)

value = 2
// 조건이 성립되지 않으면 에러 메세지 출력
//assert(value == 0, "값이 0이 아닙니다.")

func guardText(value: Int?){
    guard let value = value else {return}
    print(value)
}

guardText(value: 2)
