let b = 10
var a = 5
// a = b
// a is now equal to 10

// let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2


// --Arithmatic Operator
// 1 + 2       // equals 3
// 5 - 3       // equals 2
// 2 * 3       // equals 6
// 10.0 / 2.5  // equals 4.0

// "hello, " + "world"  // equals "hello, world"


// --Remainder Operator
// 9 % 4    // equals 1
// -9 % 4   // equals -1


// --Unary Minus Operator
let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"


//  --Unary plus Operator
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6


// --Compound Assignment Operators
// var a = 1
// a += 2
// a is now equal to 3
// The compound assignment operators don’t return a value. For example, you can’t write let b = a += 2.


// --Comparison operator
// Equal to (a == b)
// Not equal to (a != b)
// Greater than (a > b)
// Less than (a < b)
// Greater than or equal to (a >= b)
// Less than or equal to (a <= b)

// Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance.

// (1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
// (3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
// (4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"


// --Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90

// --Nil-Coalescing Operator
// The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil.
// a != nil ? a! : b

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
// print(colorNameToUse)

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName isn't nil, so colorNameToUse is set to "green"
// print(colorNameToUse)


// --Range Operators

// -Closed Range Operator ...
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25


// -Half-open Range Operator ..
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack


// -One-Sided Ranges

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

for name in names[..<2] {
    print(name)
}
// Anna
// Alex

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true


// --Logical oprators
// Logical NOT (!a)
// Logical AND (a && b)
// Logical OR (a || b)

// -Logical NOT
// The logical NOT operator (!a) inverts a Boolean value so that true becomes false, and false becomes true.
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

// -Logical AND
// The logical AND operator (a && b) creates logical expressions where both values must be true for the overall expression to also be true.
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

// -Logical OR
// The logical OR operator (a || b) is an infix operator made from two adjacent pipe characters. You use it to create logical expressions in which only one of the two values has to be true for the overall expression to be true.
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

// -Combining logical operator
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

// The Swift logical operators && and || are left-associative, meaning that compound expressions with multiple logical operators evaluate the leftmost subexpression first.


