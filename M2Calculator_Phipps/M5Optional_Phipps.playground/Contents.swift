import UIKit



let name1 = 10
let name2: Int = 20
let name3: Int
name3 = 30
print(name3)

// Optionals / Optional Type
let num: Int? = nil //nil -> no value, Optional<Int>
print(num)

let numStudents1: Int? = nil // nil can only have optional type / Type Annotation

let numStudents2: Int? = 0
//let numStudents3: Int? = ""

// Non-Optional and Optional
let number = 123
print(number)
//let numberOptional: Int? = nil
//print(numberOptional)

//Forced Unwrapping: only used when you are 100% sure the value is not nil
print(numberOptional!) //crash

let numberOptional: Int? = 123
let a = numberOptional // Option + click
print(type(of: a))
let b = numberOptional!
print(type(of: b))

let str = "123"
let num2 = Int(str)! // Type Conversion -> Optional Type

//let strOptional: String? = "123"
//let num3 = Int(strOptional!) //Int() Can't put optional type in paretheses of type conversion

//Unwrapping Optional
//1. Forced Unwrapping
//2. Optional Binding - safely

/*
 if let name: Type = optionalExpression{ //runs once if unwrapping succeeds. the optional is not nil
    statement
 }else{
 }
 while let name: Type = optionalExpression{
    statement
 }
 guard let name: Type = optionalExpression else{
    statement
    retrun
 }
 statement
 */

//let str2: String? = "123ab"
let str2: String? = nil
let num3 = Int(str2 ?? "0") // nil-coalescing operator

//Optional Binding
/*
if let str2 = str2{
    if let num3 = Int(str2){
        print(num3)
    }else{
        print("Type Conversion Failed")
    }
}else{
    print("Optional Binding Failed")
}
 */

// Multiple Optional Bindings
if let str2 = str2, let num3 = Int(str2){
}else{
    print("Type Conversion Failed or Optional Binding Failed")
}

