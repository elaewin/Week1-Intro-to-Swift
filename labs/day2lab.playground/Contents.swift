//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Write a function that takes in an array of planet names as strings, checks if array contains “Earth”. If it does not, add it. Otherwise, do nothing.

var planetArray = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

func findEarth(arrayOfPlanets: [String]) {
    
    if !arrayOfPlanets.contains(where: {$0 == "Earth"}) {
//        arrayOfPlanets += "Earth"
    }
}

//Using sort and reduce, create string from the above array sorted alphabetically. Example Output: [“Venus”, “Earth”] would produce “Earth Venus”

func sortAndReduce(array: [String]) -> String {
    
    var sortedArray = array.sorted()
    
    
    
    return ""
}


//Declare a dictionary of string keys and values. Declare a function that takes in a string and searches dictionary for it as a value.

let dictionaryOfPlanetGods = ["Mercury": "God of messengers and travel", "Venus": "Goddess of love and beauty", "Earth": "What is says on the label", "Mars": "God of war", "Jupiter": "God of thunder; Ruler of the gods", "Saturn": "God of agriculture", "Uranus": "Father of the gods", "Neptune": "God of the sea"]

func whichGod(name: String) -> String {
    
    let name = name.capitalized
    var result = ""
    
    if (dictionaryOfPlanetGods[name] != nil) {
        result = dictionaryOfPlanetGods[name]!
    } else {
        result = "Not found."
    }
    
    return result
}

whichGod(name: "Jupiter")
whichGod(name: "mercury")
whichGod(name: "Bill")


//Write a function that counts repeating words in an array of strings, and prints out the count of each

let arrayOfStrings = ["Climb a tree, wait for a fireman jump to fireman then scratch his face.", "Sleep on keyboard stand in front of the computer screen, but leave fur on owners clothes stand in front of the computer screen, yet instantly break out into full speed gallop across the house for no reason behind the couch.", "All of a sudden cat goes crazy ears back wide eyed.", "Fall over dead not really but gets sympathy find empty spot in cupboard and sleep all day."]




