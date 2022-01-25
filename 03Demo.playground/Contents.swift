import UIKit

var greeting = "Hello, playground"

// Loops:

// value from  an array is  retrieved using the index as
// array[index].

// Range Operator is a shortcut for expressing range of
// values.

// we represent range operator using (a...b) the values a
// and b are bounds and they are inclusive.This is closed
// range operator.

// To exclude the upper bound in a range we use Half-range
// operator (a..<b).

// For loop:

// 1
var number:Int = 5
for index in 1 ... 5 {
    print("\(index) * \(number) = \(index * number)")
}

// 2
var totalNumbers = 100
var sum:Int = 0
for number in 1 ... totalNumbers {
    sum += number
}
print("\nThe sum of first \(totalNumbers) is \(sum)\n")

// 3
var coreLang = ["Java", "Swift", "Javascript", "ASP.net", "SQL"]
// In swift Array is declared using var arrayName = []
for index in 0 ..< coreLang.count {
    print("\(coreLang[index])")
}

// 4

var totalSum = 10
print("")
for val in 1 ... totalSum {
    if (val % 2 == 0) {
        print("\(val)", terminator:",")
    }
}
print(" are all even numbers\n")

// 5

var member = true
var scratchCard = 10
var count = 0
for attempt in 1 ..< scratchCard {
    count += 1
    if member {
        if count > 3 {
            print("You won $\(scratchCard - 2)")
            count = 0
            break
        }
    }
    else {
        if count > 8 {
            print("You got $\(scratchCard - 8)")
        }
    }
}

// While - Loop amd Repeat-while Loop:

// 1

var prodNumber:Int = 6
var product:Int = 1
print("\nThe product of first \(prodNumber) numbers is", terminator:" ")
while prodNumber > 0 {
    product *= prodNumber
    prodNumber -= 1
}
print(product, "\n")

// 2

var rangeValue:Int = 30
while rangeValue >= 1 {
    if rangeValue % 3 == 0 {
        print("\(rangeValue)", terminator:" ")
    }
    rangeValue -= 1
}

// 3

var number1 = 1
print("\n")
repeat {
    print(number1, terminator:" ")
    number1 += 1
} while number1 <= 10

// 4

var number2 = 3
print("\n")
repeat {
    print("Hello World!!")
    number2 += 1
} while (number2 <= 2)

// 5

print("\n")

var a = 0
var b = 10

while (b - 2 > 0) {
    b -= 2
    while (a + 2 < 10) {
        a += 2
        if a == b {
            continue
        }
        print("(\(a),\(b))", terminator:"")
    }
}

// 6

print("\n")
var d = 100
while (d > 50) {
    d = d - 30
}
print(d)
if (d > 70) {
    d -= 20;
}
else {
    d += 35;
}
print(d)
