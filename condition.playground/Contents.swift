import UIKit

var greeting = "Hello, playground"

let age = 20

if age < 19 {
    print("미성년자입니다.")
}

if age < 19 {
    print("미성년자입니다.")
}else{
    print("성년자")
}

let animal = "pig"

if animal == "dog"{
    print("강아지 사료 주기")
}else if animal == "cat"{
    print("고양이 사료 주기")
}else{
    print("해당하는 동물 사료가 없음")
}

let color = "green"

switch color{
case "blue":
    print("파란색")
case "green":
    print("초록색")
case "yello":
    print("노란색")
default:
    print("찾는 색상이 없습니다.")
}

let temperature = 30

switch temperature{
case -20...9:
    print("겨울")
case 10...14:
    print("가을")
case 15...25:
    print("봄")
case 26...35:
    print("여름")
default:
    print("이상 기후입니다.")
}
