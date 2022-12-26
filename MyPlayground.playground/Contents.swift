import UIKit

// 반복문
for i in 0...99 {
    i
}

// 상수
let a: Int = 100

// 변수
var b: Int = 200

// 실수
var someFloat: Float = 1.1

// 타입 추론
var number = 10

// 배열 선언 (데이터 순서대로 저장)
//var numbers: Array<Int> = Array<Int>()
var numbers: [Int] = []

// 원소 추가, 삽입, 삭제
numbers.append(1)
numbers.append(2)
numbers.insert(3, at: 1)
numbers.remove(at: 0)
print(numbers)

// 딕셔너리 선언 (키와 값으로 저장)
//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["이주훈": 1]

// 원소 추가, 삭제
dic["김철수"] = 2
dic["김민지"] = 5
dic.removeValue(forKey: "김민지")
print(dic)

// 세트 선언 (무작위로 저장, 중복 저장 불가, 축약 불가)
var set: Set = Set<Int>()

// 원소 추가, 삭제
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.remove(20)
print(set)
