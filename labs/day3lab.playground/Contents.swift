//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Declare Identity protocol with id String

protocol Identity
{
    var id: String { get }
}


// Declare a ToDo class that has a text member of type String, and conforms to Identity protocol

class ToDo : Identity {
    
    var id: String
    
    init(id: String) {
        self.id = id
    }
    
}


// Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.

protocol ObjectStore
{
    func add(itemToAdd: String) -> [String]
    
    func remove(itemToRemove: String) -> [String]
    
    func objectAtIndex(index: Int) -> String
    
    func count() -> Int
    
    func allObjects()
}


// Create Store class that will conform to ObjectStore protocol and implement required methods

class Store : ObjectStore {
    
    var listOfItems: [String]
    
    init(listOfItems: [String]) {
        self.listOfItems = listOfItems
    }
    
    func add(itemToAdd: String) -> [String] {
        listOfItems.append(itemToAdd)
        return listOfItems
    }
    
    func remove(itemToRemove: String) -> [String] {
        
        for (index, item) in listOfItems.enumerated() {
            if item.lowercased() == itemToRemove.lowercased() {
                listOfItems.remove(at: index)
            }
        }
        return listOfItems
    }
    
    func objectAtIndex(index: Int) -> String {
        return listOfItems[index]
    }
    
    
    func count() -> Int {
        let result = listOfItems.count
        return result
    }
    
    
    func allObjects() {
        for item in listOfItems {
            print(item)
        }
        
    }
    
}


// Demonstrate adding / removing of ToDo items.

var groceryList = Store(listOfItems: ["milk"])

groceryList.listOfItems

groceryList.add(itemToAdd: "cheese")
groceryList.add(itemToAdd: "pickles")
groceryList.add(itemToAdd: "kibble")
groceryList.add(itemToAdd: "peaches")

groceryList.remove(itemToRemove: "pickles")
groceryList.remove(itemToRemove: "Milk")


groceryList.objectAtIndex(index: 1)
groceryList.count()
groceryList.allObjects()




