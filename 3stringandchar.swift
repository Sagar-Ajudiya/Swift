// --String Literals

let someString = "Some string literal value"

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
// print(quotationṇ)


let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""
// print(singleLineString)
// print(multilineString)



let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
// print(softWrappedQuotation)


let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
// print(lineBreaks)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
// print(wiseWords)

// let threeDoubleQuotationMarks = """
// Escaping the first quotation mark \"""
// Escaping all three quotation marks \"\"\"
// """
// print(threeDoubleQuotationMarks)

// -Extended String Delimiters

// let noExternalDelimiter = "Line 1\nLine 2"
// print(noExternalDelimiter)

// Line 1

// Line 2

// let withExternalDelimiter = #"Line 1\nLine 2"#
// print(withExternalDelimiter)

// Line 1\nLine 2

// let withExternalDelimiterBreakLine = #"Line 1\#nLine 2"#
// print(withExternalDelimiterBreakLine)

// Line 1

// Line 2

// let threeMoreDoubleQuotationMarks = #"""
// Here are three more double quotes: """
// """#
// print(threeMoreDoubleQuotationMarks)
// Here are three more double quotes: """


// -Initializing an Empty String

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other


var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified


// -Working with Characters

// let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
// print(catString)
// Prints "Cat!🐱"

// for character in "Dog!🐶" {
//     print(character)
// }
// D
// o
// g
// !
// 🐶


// -Concatenating Strings and Characters

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
print(welcome)
// welcome now equals "hello there"

var instruction = "look over"
instruction += string2
print(instruction)
// instruction now equals "look over there"

let exclamationMark: Character = "!"
welcome.append(exclamationMark)
print(welcome)
// welcome now equals "hello there!"

let badStart = """
    one
    two
    """
let end = """
    three
    """
print(badStart + end)
// Prints two lines:
// one
// twothree

let goodStart = """
    one
    two

    """
print(goodStart + end)
// Prints three lines:
// one
// two
// three


// -String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)
// Prints 3 times 2.5 is 7.5

// print(#"Write an interpolated string in Swift using \(multiplier)."#)
// Prints "Write an interpolated string in Swift using \(multiplier)."

// print(#"6 times 7 is \#(6 * 7)."#)
// Prints "6 times 7 is 42."


// -Counting Characters

// let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
// print("unusualMenagerie has \(unusualMenagerie.count) characters")
// Prints "unusualMenagerie has 40 characters"

// Note that Swift’s use of extended grapheme clusters for Character values means that string concatenation and modification may not always affect a string’s character count.


var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"

// word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4"

// if you initialize a new string with the four-character word cafe, and then append a COMBINING ACUTE ACCENT (U+0301) to the end of the string, the resulting string will still have a character count of 4, with a fourth character of é, not e:


let greeting = "Guten Tag!"
print(greeting[greeting.startIndex])
// G
print(greeting[greeting.index(before: greeting.endIndex)])
// !
print(greeting[greeting.index(after: greeting.startIndex)])
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
print(greeting[index])
// a

// print(greeting[greeting.endIndex]) // Error
// print(greeting.index(after: greeting.endIndex)) // Error

for index in greeting.indices {
    print("\(greeting[index])", terminator: " ")
}
// Prints G u t e n   T a g ! 


var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)
// welcome now equals "hello!"

welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))
// welcome now equals "hello there!"

welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
// welcome now equals "hello there"


// -Substring

let msg = "Hello, world!"
// let index = msg.firstIndex(of: ",") ?? msg.endIndex
let beginning = msg[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
print(newString)


// -Comparing String

let quotation1 = "We're a lot Alike, yoU and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation1 == sameQuotation {
    print("These two strings are considered equal")
}
else {
    print("Different")
    
}
// Prints "These two strings are considered equal"

// -Prefix & Suffix equality

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    // if scene.hasPrefix("Act 1 ") {
    //     act1SceneCount += 1
    // }
}
print("There are \(act1SceneCount) scenes in Act 1")
// Prints "There are 5 scenes in Act 1"

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    // if scene.hasSuffix("Capulet's mansion") {
    //     mansionCount += 1
    // } else if scene.hasSuffix("Friar Lawrence's cell") {
    //     cellCount += 1
    // }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// Prints "6 mansion scenes; 2 cell scenes"

