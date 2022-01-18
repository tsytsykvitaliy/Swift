import UIKit

//PrintStatements
var greeting = "Hello, playground"

print("Hi", 10, 12.5)
print(greeting)

//String interpolation
//     \(variableName)
var language = "Swift"
print("This is written in \(language)")

var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")

var name = "Vitaliy"
var grade = 98
//Hello, Vitaliy!

print("Hello, \(name)! Your grade is \(grade)")

print("""
Hello
World!
""")

print("Hello All,\rWelcome to Swift Programming")

//let is constant
//explicit declaration of the data type
let welcomeMessage = "Hello!"
print(welcomeMessage, "All")

//Usually a print statement is terminated by a new line
//Terminator allowes to use other character(s)
print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming", terminator : " - ")
print("Fall 2021")

var name1 = "John"
var grade1 = 89
print("Welcome back, \(name1)! Your grade is", terminator : ": ")
print(grade1)

//Separator separates items in a print statement by a
//Desired character(s)
print("List of numbers: ")
print(1, 2, 3, 4, 5, 6)
print("New pattern: ")
print(1, 2, 3, 4, 5, 6, separator: "-")

//Variables and Constants
//Declaration of variable
var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14
print(pi)

//Explicit Declaration of Variable
var age1 : Int = 23
age1 = age1 * 2
print(age1)

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")

var course1 = "iOS"
var course2 = "Java"
print(course1, course2)
print(course1, "-", course2)

print(10, 20, 30)
print(12.5, 15.5)

//Tuples
var httpError  = (errorCode : 404, errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage)

var name2 = ("John", "Smith")
var fName = name2.0
var lName = name2.1
print(fName, terminator : ", ")
print(lName)

var origin = (x : 0, y : 0)
var point = origin
print(point)

let city = (name : "Maryville", population : 11000)
let(cityName, cityPopulation) = (city.0, city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread", "onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname, lname) = (lname, fname)
print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("handGloves", "helmet", ("bat", "ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
