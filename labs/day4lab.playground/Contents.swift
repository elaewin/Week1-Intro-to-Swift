//: Playground - noun: a place where people can play

import UIKit

// Declare Enum that conforms to Error. Your enum should have at least 5 cases and should use Associated Values.

enum LateForClass: Error {

    case alarmMalfunction(Int, Int)
    
    case weather(String)
    
    case carTrouble(String)
    
    case busTrouble(Int)
    
    case alienInvasion(String)
    
}

let excuse = LateForClass.busTrouble(5)

switch excuse {
case .alarmMalfunction(let alarmWentOff, let supposedToGoOff):
    print("My alarm went off at \(alarmWentOff) instead of at \(supposedToGoOff)!")
case .weather(let weatherType):
    print("Sorry, the \(weatherType) was really bad at my house.")
case .carTrouble(let automotiveIssue):
    print("My car has \(automotiveIssue)--I couldn't get to class.")
case .busTrouble(let busNumber):
    print("The #\(busNumber) bus was running really late!")
case .alienInvasion(let ridiculousAssertion):
    print("Aliens are invading Earth! I had to \(ridiculousAssertion) before I could get to class.")
}



// Declare a Person class with 3 member properties. Declare a Student subclass that inherits from Person.
// Both Your Student and Person class should have a variety of meaningful Type and Instance Methods. Be creative.
// In either of these 2 classes, demonstrate a computed property and implement a property observer.

class Person {
    
    let firstName: String
    let lastName: String
    var age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    func hadABirthday() {
        self.age += 1
    }
    
}

var Me = Person(firstName: "Erica", lastName: "Winberry", age: 40)


class Student : Person {
    
    var currentClass: String
    
    var assignmentGrades: [Double] {
        didSet {
            updateClassGrades()
        }
    }
    
    var currentGradePercent: Double
    var letterGrade: Character
    
    init(currentClass: String,
         assignmentGrades: [Double],
         currentGradePercent: Double = 100.00,
         letterGrade: Character = "A",
         firstName: String,
         lastName: String,
         age: Int) {
        
        self.currentClass = currentClass
        self.assignmentGrades = assignmentGrades
        self.currentGradePercent = currentGradePercent
        self.letterGrade = letterGrade
        
        super.init(firstName: firstName, lastName: lastName, age: age)
    }
    
    var sumOfGradeScores: Double {
        return assignmentGrades.reduce(0.0, {$0 + $1})
    }
    
    func calcGradePercent() -> Double {
        currentGradePercent = sumOfGradeScores / Double(assignmentGrades.count)
        return currentGradePercent
    }
    
    func addAssignmentGrade(newGrade: Double) {
        assignmentGrades.append(newGrade)
    }
    
    func getLetterGrade() {
        switch calcGradePercent() {
        case 90.0...100.0:
            letterGrade = "A"
        case 80.0...89.0:
            letterGrade = "B"
        case 70.0...79.0:
            letterGrade = "C"
        case 60.0...69.0:
            letterGrade = "D"
        default:
            letterGrade = "F"
        }
    }
    
    func updateClassGrades() {
        if !assignmentGrades.isEmpty {
            calcGradePercent()
            getLetterGrade()
        } else {
            print("No grades have been recorded.")
        }
    }
    
}


var alsoMe = Student(currentClass: "iOS 401", assignmentGrades: [90.0, 89.0, 50.0], letterGrade: "B", firstName: "Erica", lastName: "Winberry", age: 40)

alsoMe.currentGradePercent
alsoMe.updateClassGrades()
alsoMe.currentGradePercent

alsoMe.letterGrade

alsoMe.addAssignmentGrade(newGrade: 89.0)
alsoMe.updateClassGrades()
alsoMe.currentGradePercent

alsoMe.letterGrade




// Create a Classroom class that is a true singleton and has an array of Students.
// Add accessor methods to Classroom to add and remove from the array.

class Classroom
