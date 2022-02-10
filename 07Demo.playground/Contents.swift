import UIKit

var greeting = "Hello, playground"

// Arrays

// 1
var numbers: [Int] = [2, 3, 4]
print(numbers)
     
// 2
var emptyArray = [Int]()
print(emptyArray)

// 3
var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])

// 4
var programmingLanguages1 = ["Swift", "Java", "Python"]
programmingLanguages1[0] = "Java Script"
print(programmingLanguages1[0])

// 5: Answer the below questions.
var names: [String] = ["Oliver", "Elijah", "James"]
print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")
print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")
print(names.count)
names.sort()
print("After sorting \(names)")
names.reverse()
print("After reversing \(names)")
names.remove(at: 2)
print("After removing \(names)")
names.swapAt(1, 2)
print("After swapping \(names)")

//6
var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")
