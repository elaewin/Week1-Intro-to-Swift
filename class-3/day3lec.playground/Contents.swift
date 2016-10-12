//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// STRUCTS

//struct Person {
//    
//    var name: String
//    var age: Int?
//    
//    init(name: String, age: Int? = nil) {
//       
//        self.name = name
//        self.age = age
//        
//    }
//    
//    //this is an instance method, call using the instance
//    func ageInDogYears() -> Int {
//        let age = self.age ?? 0 //nil coalescing
//        return age * 7
//    }
//    
////    this is a type method, call using the struct
////    static func sayHello() {
////        print("Hi")
////    }
//}
//
//
//// Extensions
//
//extension Person {
//    func sayHello() {
//        print("Hi")
//    }
//    
//}


//
//let myPerson = Person(name: "Erica", age: 40)
//
//let name = myPerson.name
//
//var otherPerson = myPerson
//
//otherPerson.age
//otherPerson.age = 10
//
//myPerson.age
//otherPerson.age

//let personAgeInDogYears = myPerson.ageInDogYears()


// struct with optional initializer

struct Cat {
    
    var name: String
    var age: Int?
    
    init?(name: Any, age: Int? = nil) {
        
        if let name = name as? String {
            self.name = name
        } else {
            return nil
        }
        
        self.age = age
    }
}

let newCat = Cat(name: 123)


// CLASSES

class Person {
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil) {
        self.name = name
        self.age = age
    }
    
    func ageInDogYears() -> Int? {
        let age = self.age ?? 0
        return age * 7
    }
}

let johnOne = Person(name: "John")
let johnTwo = johnOne

johnOne.age = 100
johnTwo.age = 50

johnOne.age



// Useful example of an extension

extension String {
    func length() -> Int {
        return self.characters.count
    }
}

let test = "A string of randomness just for a test"

let count = test.length()


// EQUALITY VS. IDENTITY

let john = Person(name: "John")
let john2 = Person(name: "John")

if john === john2 {
    print("These objects are identical")
}

let john3 = john

if john === john3 {
    print("These objects are identical")
}


// INHERITANCE

class Student: Person {
    
    var studentID: String
    
    init(name: String, age: Int? = nil, id: String) {
        
        self.studentID = id
        
        super.init(name: name, age: 21)
        
    }
}

let student = Student(name: "Bill", id: "aklsurt984y")

student.age

student.ageInDogYears()











