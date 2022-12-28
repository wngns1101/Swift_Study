import UIKit

class SomeClass {
    var count: Int = 0
    
}

struct SomeStruct {
    var count: Int = 0
}

// class는 참조타입이라 같은 곳을 가리키는 클래스의 값을 변경하면 전부다 변경됨
var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count

// struct는 값타입이라 같은 곳을 가리키는 클래스의 값을 변경할지라도 하나만 변경됨
var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count
