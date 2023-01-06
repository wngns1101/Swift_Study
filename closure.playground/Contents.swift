import UIKit

// 반환값 없음
let hello = { () -> () in
    print("hello")
}

hello()

// 반환값 있을 때
let hello2 = { (name: String) -> String in
    return "hello, \(name)"
}

hello2("Gunter")

func doSomething(closure: () -> ()){
    closure()
}

//doSomething(closure: { () -> () in
//    print("hello")
//})

//반환값이 없을 때 이렇게 생략가능
doSomething(){
    print("hello2")
}
doSomething{
    print("hello2")
}

func doSomething2() -> () -> () {
    return{() -> () in
        print("hello4")
    }
}

doSomething2()()
 
//다중후행클로져 문법
func doSomething2(success: () -> (), fail: () -> ()) {
    
}

doSomething2 {
     
} fail: {
    
}

func doSomething3(closure: (Int,Int,Int) -> Int){
    closure(1, 2, 3)
}

doSomething3(closure: {(a, b, c) in
    return a+b+c
})

// 매개변수 생략하고 약실인수로 대체하면 매개변수와 in을 생략할 수 있음
doSomething3(closure: {
    return $0 + $1 + $2
})

// return 구문 하나만 있으면 return도 생략 가능
doSomething3(closure: {
    $0 + $1 + $2
})

//단 하나의 클로져만 매개변수로 전달할 경우
doSomething3{
    $0 + $1 + $2
}
