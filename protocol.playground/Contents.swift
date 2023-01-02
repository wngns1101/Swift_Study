import UIKit

protocol SomeProtocol1{
    
}
protocol SomeProtocol2{
    
}

struct SomeStructure: SomeProtocol1, SomeProtocol2{
    
}

protocol FirstProtocol {
    var name: Int {get set}
    var age: Int {get}
}

protocol AnotherProtocol{
    static var someTypeProperty: Int{get set}
}

protocol FullyNames{
    var fullName: String {get set}
    func printFullName()
}

struct Person: FullyNames{
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3{
    func someTypeMethod()
}

protocol SomeProtocol4{
    init(someParameter: Int)
}

protocol SomeProtocol5{
    init()
}

class SomeClass: SomeProtocol5{
    required init(){
        
    }
}
