// function calling and syntax
func studentName(name: String) -> String {
    return name
}
print(studentName(name: "Sagar"))
print(studentName(name: "Priyanshu"))


// parameter and return value
func divison(num1: Double, num2: Double) -> Double {
    return num1 / num2
}
divison(num1: 10, num2: 3)


// function without parameter
func greet() {
    print("Have a greate day")
}
greet()


// return multiple value
func largeSmall(array: [Int]) -> (large: Int, small: Int) {
    var large = array[0]
    var small = array[0]
    
    for i in array {
        if i > large {
            large = i
        } else if i < small {
            small = i
        }
    }
    return (large, small)
}

let num = largeSmall(array: [40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")


// without return values
func returnNum(no1: Int, no2: Int) {
    print("no1 is \(no1) and no2 is \(no2)")
}

returnNum(no1: 10, no2: 20)


// array with optional return type
func minMax(array: [Int]) -> (min:Int, max:Int)? {
    if array.isEmpty { return nil }
    
    var curMin = array[0]
    var curMax = array[0]
    
    for i in array {
        if i < curMin {
            curMin = i
        }
        else if i > curMax {
            curMax = i
        }
    }
    return (curMin, curMax)
}

var a = minMax(array: [8, 2, 109, 3, 71])


// functions local parameter
func sample(num: Int) {
    print(num)
}
sample(num: 55)


// external parameter
func power(first a: Int, powerOf b: Int){
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
}
power(first: 5, powerOf: 2)


// variadic parameters
func variadic(members: Any...){
    for i in members {
        print(i)
    }
}

variadic(members: "namer", 20, 54.15, [1, 2, 3, 4])

// multiple variadic parameters
// func summarizeGoals(times: Int..., players: String...) {
//   for i in times {
//     print("times \(i)")
//   }
//   for j in players {
//     print("players \(j)")
//   }
// }
// summarizeGoals(times: 18, 33, 55, 90, players: "Dani", "Jamie", "Roy")

// variadic function in function
func outerFunction(_ name: String) {
    func innerFunction(_ numbers: Int...) {
        let sum = numbers.reduce(0, +)
        print("Inner function: The sum of \(name)'s numbers is \(sum)")
    }
    innerFunction(1, 2, 3)
}
outerFunction("John")


// variadic nested function
func outerFunction1(_ values: Any...) {
    func innerFunction1(_ innerValues: Any...) {
        // Inner function code
        print("Inner values:")
        for value in innerValues {
            print(value)
        }
    }
    // Outer function code
    print("Outer values:")
    for value in values {
        print(value)
    }
    // Call inner function
    innerFunction1("Hello", 2, 3.5)
}
outerFunction1(1, "abc", 4.5)


// inout variadic function
// func updateValues(_ values: inout Int...) {
//     for i in 0..<values.count {
//         values[i] *= 2
//     }
// }

// var a = 1
// var b = 2
// var c = 3

// updateValues(&a, &b, &c)

// print(a, b, c) // Output: 2 4 6

// when using inout parameters in variadic functions, we need to make sure that all parameters passed to the function are of the same type.


// inout parameter
// func temp(a1: inout Int, b1: inout Int) {
//     let t = a1
//     a1 = b1
//     b1 = t
// }
// var n1 = 5, n2 = 10
// temp(a1: &n1, b1: &n2)
// print("Swapped Number \(n1) and \(n2)")


// // void function -> won't return anything
func input() -> Void {
    print("Swift is Owsmm")
}
input()


// // using function type
// //var addition : (Int, Int) -> Int = summ
// func sum (a:Int, b:Int) -> Int {
//     return a + b
// }

// var addition = sum
// type(of: addition)

// print(addition(40, 40))
// print(sum(a: 10, b: 5))


// // function as parameter and return type
// func addition(a: Int, b: Int) -> Int{
//     return a + b
// }

// func another(sum: (Int, Int) -> Int, a:Int, b:Int){
//     print(addition(a,b))
// }

// another(sum: addition, a: 10, b: 20)


// // nested function
// func calcDecrement(forDecrement total:Int) -> () -> Int{
//     var overallDecrement = 0
    
//     func decrementer() -> Int {
//         overallDecrement -= total
//         return overallDecrement
//     }
//     return decrementer
// }

// let decrem = calcDecrement(forDecrement: 30)
// print(decrem())


// func sumOfDouble(no1: Double, no2: Double) -> Double {
//     return (no1 + no2)
// }
// print(sumOfDouble(no1: 1.0, no2: 1.0))


// func greet(person: String) -> String {
//     let greeting = "Hello, " + person + "!"
//     return greeting
// }

// func greetAgain(person: String) -> String {
//     return "Hello again, " + person + "!"
// }

// func greet(person: String, alreadyGreeted: Bool) -> String {
//     if alreadyGreeted {
//         return greetAgain(person: person)
//     } else {
//         return greet(person: person)
//     }
// }

// greet(person: "Sagar", alreadyGreeted: false)
// greet(person: "Rajan", alreadyGreeted: true)


// // defer
// func captureTest() {
//    var fullName = "VIrat Kohli"
//    defer {
//        print(fullName)
//    }
//    fullName = "Virat kohli"
//    print(fullName)
// }
// captureTest()

// func mulDefer() {
//     defer { print("first")}
//     defer { print("Second")}
//     defer { print("Third")}
//     defer { print("fourth")}
//     return print("Function")
// }
// mulDefer()

// for i in 1...3 {
//     print ("In \(i)")
//     defer { print ("Deferred \(i)") }
//     print ("Out \(i)")
// }


// func powers(toPowerOf num: Int) -> (String) -> Int {
//     func square(squareString number: String) -> Int {
//         var temp = selfNumber(selfNumber.number)
//         temp *= temp
//         return temp
//     }

//     func cube(cubeString number: String) -> Int {
//         var temp = selfNumber(selfNumber.number)
//         temp = temp * square(squareString: String(temp))
//         return temp
//     }

//     func selfNumber(selfNumber number: String) -> Int {
//         return Int(number) ?? 0
//     }

//     if num == 2 {
//         return square
//     } else if num == 3 {
//         return cube
//     } else {
//         return selfNumber
//     }

// }

// let toPower = powers(toPowerOf: 3)
// print(toPower("2"))

// print(powers(toPowerOf: 2)("2"))

// func calculator(operation: String, number1: Double, number: Double) {
//     func addition(number1: Double, number2: Double) -> Double {
//         print(number1 + number2)
//     }
//     func substraction(number1: Double, number2: Double) -> Double {
//         number1 - number2
//     }
//     func multiplication(number1: Double, number2: Double) -> Double {
//         return number1 * number2
//     }
//     func division(number1: Double, number2: Double) -> Double {
//         return number1 / number2
//     }

//     switch operation {
//     case "+":
//         return addition
//     default:
//         print("Default value")
//     }

//     return (Double, Double) -> Double

// }

// var add = calculator(operation: "+")


func operate(symbol: String) -> (Int, Int) -> Int {
    func add(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
    func subtract(number1: Int, number2: Int) -> Int {
        return number1 - number2
    }
    
    let operation = (symbol == "+") ? add : subtract
    return operation
}

let result = operate(symbol: "-")
let ans = result(2,2)
print("Answer is:", ans)