enum Opearation {
    case add
    case subtract
    case multiplication
    case division
}


// enum Season: CaseIterable {
//     case spring, summer, autumn, winter
// }

// var currentSeason: Season
// currentSeason = Season.summer

// print("Current Season:", currentSeason)

// for loop to iterate over all cases
// for currentSeason in Season.allCases {
//   print(currentSeason)
// }


// Raw value
enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}

var result = Size.small.rawValue
print(result)


// Associated value
enum Laptop {
  case name(String)
  case price (Int)
}

var brand = Laptop.name("Razer")
print(brand)

var offer = Laptop.price(1599)
print(offer)


enum Marks {
  case gpa(Double, Double, Double)
  case grade(String, String, String)
}

var marks1 = Marks.gpa(3.6, 2.9, 3.8)
print(marks1)

var marks2 = Marks.grade("A", "B", "C")
print(marks2)


// Named Associated Values
enum Pizza {
  case small (inches: Int)
  case medium (inches: Int)
  case large (inches: Int)
}

var pizza1 = Pizza.medium(inches: 12)
print(pizza1)


// enum Associated Values and Switch Statement
enum Mercedes {
 case sedan(height: Double)
 case suv(height: Double)
 case roadster(height: Double)
}

var choice = Mercedes.suv(height: 5.4)

switch(choice) {
 case let .sedan(height):
   print("Height:", height)

 case let .suv(height):
   print("Height:", height)

 case let .roadster(height):
   print("Height:", height)
}




// raw values are predefined constant values provided to each enum value

// associated values are more like variables associated with the enum values

// An enum cannot have both raw values and associated values at the same time.

// The raw values of an enum must be of the same data type. But associated values can be of any type.