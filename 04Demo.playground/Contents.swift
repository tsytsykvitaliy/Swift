import UIKit

var greeting = "Hello, playground"

// Strings01

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

// Evaluate each of the following expressions
fact.count

fact += ", it has a better memory management"

dev.append(" by Apple")

author.lowercased()

author.uppercased()

// string[index]
author[author.startIndex]

author[author.index(before: author.endIndex)]

dev[dev.startIndex]

dev[dev.index(before: dev.endIndex)]

author[author.index(after: author.startIndex)]

author[author.index(author.startIndex,offsetBy: 5)]

author[author.index(author.endIndex,offsetBy: -5)]

fact[fact.index(fact.endIndex,offsetBy: -4)]
