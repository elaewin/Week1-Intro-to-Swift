//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// GENERICS

// making an add method

//func add(first: String, second: String) -> String {
//    return first + second
//}
//
//func add(first: Int, second: Int) -> Int {
//    return first + second
//}

// ...have to keep making new funcs for every type you want to add.

// making a generic version:

//func add<T: >(first: T, second: T) -> T {
//    return first + second
//}

// generics in a protocol use associatedtype

protocol ObjectStoreProtocol {
    
    associatedtype T
    
    func add(object: T)
    func remove(object: T)
    func objectAt(index: Int)
}

// Generic class:


class Store<T: Hashable> {
    var dataStore = [T]()
    
    func add(object: T) {
        dataStore.append(object)
    }
}

let myIntStore = Store<Int>()

let myStringStore = Store<String>()

// generic enum

enum Identification<T, U> {
    case email(U)
    case phoneNumber(T, T, T)
    case homeAddress(Int, Int, T)
}

let myId = Identification<String, String>.homeAddress(456, 345, "a;ldknfa;kd")
let myEmail = Identification<Int, String>.email("String")


