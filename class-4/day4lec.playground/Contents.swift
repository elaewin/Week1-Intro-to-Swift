//: Playground - noun: a place where people can play

import UIKit

// ENUMERATIONS

enum Weather: Int {
    case reallyHot
    case rainy
    case reallyCold
    case snowing
    
    func whatsTheWeather() -> Weather {
        return self
    }
}

let currentWeather = Weather.rainy

currentWeather.whatsTheWeather()



enum Identification {
    case social(Int)
    case email(String)
    case other(Int, Int, Int)
}

let myId = Identification.other(919, 204, 4521)

let myEmail: String

switch myId {
case .email(let email):
    myEmail = email
case .social:
    print("SSN")
case .other(let num1, let num2, let num3):
    print("Phone: (\(num1)) \(num2)-\(num3)")
}


// PROPERTIES

// computed property

var count = 10

var halfCount: Int {
    return count / 2
}


// SINGLETONS

class Store {
    
    var objects = [String]()
    
    static let shared = Store()
    
    private init() {}
    
    func add(string: String) {
        objects.append(string)
    }
    
}

// After the singleton declaration, cannot create a new instance of Store w/o '.shared'.

var sharedStore = Store.shared

sharedStore.objects
sharedStore.add(string: "feh.")
sharedStore.objects


// PROPERTY OBSERVERS

//var name: String {
//didSet {
//    print("name is set")
//}
//willSet {
//    print("name was \(name)")
//}
//}


// ERROR HANDLING

enum VehicleError: Error {
    case noFuel
    case engineTrouble
}

class Vehicle {
    var gasMeter = 0
    
    func go() throws {
        
        if self.gasMeter > 0 {
            print("going")
        } else if self.gasMeter == 0 {
            throw VehicleError.noFuel
        } else {
            throw VehicleError.engineTrouble
        }
    }
}

let myCar = Vehicle()

myCar.gasMeter = 100

do {
    
    try myCar.go()
    myCar.gasMeter = -100
    try myCar.go()

    print("We are driving.")
    
} catch let error {
    
    print("There was an error. Error: \(error)")
    
}


// "MUTATING" STRUCTS

struct MyStruct {
    var something: String
    
    mutating func doSomethingElse(string: String){
        self.something = string
    }
}

var test = MyStruct(something: "this is the first thing")

test.something

test.doSomethingElse(string: "second thing.")

test.something

