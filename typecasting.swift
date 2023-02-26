var a: Int = 12
var b = Double(a)
print(b)

var c = 12.55
var d = Int(c)
print(d)

var name = "Sagar"
// var ch = Character(name) // Throws an error
// print(ch)

var char = "s"
var str = String(char)
print(str)
print(type(of:str))


var intStr = "123"
var num: Int? = Int(intStr)
print(num)
print(type(of:num))

var number = 12345
var strNumber = String(number)
print(strNumber)
print(type(of: strNumber))

