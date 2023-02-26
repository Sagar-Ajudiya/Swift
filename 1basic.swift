// semicolon is optional in Swift

// --Variables

var x = 0.0, y = 0.0, z = 0.0

// Type Annnotation
var welcomeMessage: String
welcomeMessage = "Hello Swift"

// all have same type
var red, green, blue: Double

// Constant and variable names can contain almost any character, including Unicode characters:
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

// If you need to give a constant or variable the same name as a reserved Swift keyword, surround the keyword with backticks (```) when using it as a name.

// var value can be change
var friendlyWelcome = "Hello!"
friendlyWelcome = "Simform"

// act as a constant produce, compile time error if try to change value
let languageName = "Swift"
// languageName = "Swift++"

print("The current value of friendlyWelcome is \(friendlyWelcome)")


// --DataTypes

// Int

// On a 32-bit platform, UInt is the same size as UInt32.
// On a 64-bit platform, UInt is the same size as UInt64.

// Float Double

// By default Double is select by Swift

// Double --> atleast 15 decimal places
// Float --> atleast 6 decimal places

// On a 32-bit platform, UInt is the same size as UInt32.
// On a 64-bit platform, UInt is the same size as UInt64.

// Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

// Array
// orderd
// can have duplicates

var age: [Int] = []
var ages = [12,85,42,25,56,35,62,42,22,25]
// ages.count
// ages.first
// ages.last 
// ages[3]
// ages.append(68)
// ages.insert(44, at: 2)
// ages.sort()
// ages.reverse()

// Set
// Unorderd, when we run all time different order
// no duplicate value
// sets are faster then arrays in executation

var agesSet: Set<Int> = []
var agesInSet = Set(ages)
print(agesInSet)

// dictionary
// Key-value pair

var someDictionary: [String: String] = ["fruit": "Apple", "vegetable": "Carrot"]
print(someDictionary)


// Tupels
// Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")


// --Type Inference

// Compiler automatically choose datatypes according assign value.
// Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.
let meaningOfLife = 42 // Int
// let pi = 3.14159 // Double
let anotherPi = 3 + 0.14159 // Double


// --Type Casting

let three = 3 
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)
print(integerPi)
// integerPi equals 3, and is inferred to be of type Int


// --Optional

// optionals indicate that a constant or variable is allowed to have “no value”

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)  // Int? (Optional Int)


// --nil

// You can’t use nil with non-optional constants and variables.

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

// If you define an optional variable without providing a default value, the variable is automatically set to nil for you:

// var surveyAnswer: String?
// surveyAnswer is automatically set to nil


// --Forced Unwrapped

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123."

// Trying to use ! to access a nonexistent optional value triggers a runtime error. Always make sure that an optional contains a non-nil value before using ! to force-unwrap its value.


// --Optional binding

// You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"

// If you don’t need to refer to the original, optional constant or variable after accessing the value it contains, you can use the same name for the new constant or variable:

let myNumber = Int(possibleNumber)
// Here, myNumber is an optional integer
if let myNumber = myNumber {
    // Here, myNumber is a non-optional integer
    print("My number is \(myNumber)")
}
// Prints "My number is 123"

// if let myNumber {
//     print("My number is \(myNumber)")
// }
// Prints "My number is 123"


// --Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

let optionalString = assumedString
// The type of optionalString is "String?" and assumedString isn't force-unwrapped.

// If an implicitly unwrapped optional is nil and you try to access its wrapped value, you’ll trigger a runtime error.

// Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point. Always use a normal optional type if you need to check for a nil value during the lifetime of a variable.


// --Assertions and Preconditions

// Assertions and preconditions are checks that happen at runtime. You use them to make sure an essential condition is satisfied before executing any further code.


// --Debugging with Assertions

// You pass this function an expression that evaluates to true or false and a message to display if the result of the condition is false

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 isn't >= 0.

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}