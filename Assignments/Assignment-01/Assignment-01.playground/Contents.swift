import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation
var distance:Double

// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation
let maxWeight:Int = 130

// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
print("Your max weight is \(maxWeight) pounds")
print("---------------------------------")

// 1.d) Write Swift source code to print the below in one single print statement
print("Hello, All\nWelcome to Swift Programming..!")
print("---------------------------------")

//**************** END OF QUESTION 1 ****************



//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

// Probably an error due to Double/Int incompatibility. Will need to type cast

var x0 = 15 //renamed due to x being used in the next question
var y0 = 25.0 //renamed due to y being used in the next question
//y0 = x0 //renamed due to x and y being used in the next question


// 2.b) Fix the error in the question 2.a
y0 = Double(x0) //renamed due to x and y being used in the next question


//**************** END OF QUESTION 2 ****************



//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.
let x = 2
let y = 7
let z = 5
var num = 0

if (num < x) {
    num = x
}
if (num < y) {
    num = y
}
if (num < z) {
    num = z
}
switch num {
    case x:
        print("x is greater")
    case y:
        print("y is greater")
    case z:
        print("z is greater")
    default:
        print("All numbers are the same")
}
print("---------------------------------")

//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given integer values are same or not.
var a = 13
var b = 103

if (a % 10 == b % 10) {
    print("Last digit of a and b is the same")
}
else {
    print("Last digit of a and b is not the same")
}
print("---------------------------------")

//**************** END OF QUESTION 3 ****************



//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Declare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6
var N = 10
for num in 1...N {
    if (num % 2 == 1) {
        print(num / 2 + 1, terminator: " ")
    }
    else {
        print(N - num / 2 + 1, terminator: " ")
    }
}
print("\n---------------------------------")

//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *

var C = 5
var i = 0
var n = 0
while (i < C) {
    var j = 0
    var t = i - 1
    while ((n + 1) < (C - i)) {
        print(" ", terminator: "")
        n += 1
    }
    n = 0
    while (j <= i) {
        print("*", terminator: "")
        j += 1
    }
    while (t >= 0) {
        print("*", terminator: "")
        t -= 1
    }
    print("")
    i += 1
}
i = C - 1
while (i >= 1) {
    var j = 0
    var t = i - 2
    while (n < (C - i)) {
        print(" ", terminator: "")
        n += 1
    }
    n = 0
    while (j <= i - 1) {
        print("*", terminator: "")
        j += 1
    }
    while (t >= 0) {
        print("*", terminator: "")
        t -= 1
    }
    print("")
    i -= 1
}
print("---------------------------------")

//**************** END OF QUESTION 4 ****************



//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.
var str = "nap feels great"
if (!str.starts(with: "A") && !str.starts(with: "a")) {
    str.insert(contentsOf: "A ", at: str.startIndex)
}
print(str)
print("---------------------------------")

//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.
var str1 = "nap"
print("\(str1.last!)\(str1)\(str1.last!)")
print("---------------------------------")

//5.c) Declare a String Swift and print them in the reverse order.
var swift = "Swift"
print(String(swift.reversed()))
print("---------------------------------")

//5.d) Write a Swift code to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
var myString1 = "ababa"
if (myString1.starts(with: "a")) {
    if (myString1.last == "a") {
        myString1.removeFirst()
        myString1.removeLast()
        print(myString1)
    }
    else {
        myString1.removeFirst()
        print(myString1)
    }
}
else {
    print(myString1)
}
print("---------------------------------")

//**************** END OF QUESTION 5 ****************
