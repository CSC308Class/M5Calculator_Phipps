import UIKit

/*
 Naming Conventions
 UpperCamelCase: Types
 Classes, Structs, Enums, Extensions, Protols
 struct AppDevloper{}
 
 lowerCamelCase: Values
 Variables, Constants, Functions, Properties, Parameters
 var numberOfStudents = 30
 */

//Variables(var)
//A variable's value CAN be changed after it is set
//var: makes it a variable
var course = "iOS" //String
var crn = 20819 //Int
var valid = true //Bool
course
print(course)
dump(course)
crn
print(crn)
dump(crn)
valid
print(valid)
dump(valid) //run : shift+enter

//Constants(let)
//A constant's value CANNOT changed after it is set

//let: makes it a constant instead of a variable
var numberOfStudents = 30
numberOfStudents = 15
print(numberOfStudents)

//Data types: Int, Double, String, Boolean...
//(type(of:)
print(type(of: numberOfStudents))


let num1 = 123
let num2 = 123.45
print(type(of: num1))
print(type(of: num2))
let numbers = Double(num1) + num2
print(numbers)

//OR
let numbers2 = num1 + Int(num2)
print(numbers2)

//Type Conversion create a new value in a different type

let invalidStr = "number" //String
let invalidNum = Int(invalidStr)
print(invalidNum) //optional: nil

let invalidStr2 = "100" //String
let invalidNum2 = Int(invalidStr2)
print(invalidNum2) //optional(100)
    //Because inside of "" is an integer

let score = 95
let scoreText = String(score)
print(scoreText) //"95"

//Type Inference, Type Annotation
let age: Int = 25 //Type annotation
let pi = 3.14 //Type inference: makes the type based on the value
let name = "John"

//Conditions(if statements)
//Odd/Even check
/*
if a%2 == 0{
    print("\(a) is even")
}
else{
    print("\(a) is odd")
}
 */

//Check today's date
let weekday = Calendar.current.component(.weekday, from: Date())
if weekday == 1{
    print("Today is Sunday")
}
else if weekday == 2{
    print("Today is Monday")
}
else if weekday == 3{
    print("Today is Tuesday")
}
else if weekday == 4{
    print("Today is Wednesday")
}
else if weekday == 5{
    print("Today is Thursday")
}
else if weekday == 6{
    print("Today is Friday")
}
else{
    print("Today is Saturday")
}
