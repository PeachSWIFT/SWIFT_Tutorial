# New Concepts

### Override

Sometimes, we want to create a kind of exception to a certain function. For this, we use `override`. **NOTE:** If you create a function that overrides another function *without* `override`, it is detected as an error.
What a coincidence! The perfect example can be seen through...

### Classes

Use `class` followed by a name to create a **class**. This is the same as **constructors** in JavaScript. A property declaration in a class is written the same way as a constant or variable declaration (i.e. just `var name` or `let name`), except that it is in the context of a class and is called outside the class as `class.name`. Likewise, method and function declarations are written the same way.

Use `init` with key/value pairs in parentheses folowed by curly braces `{}` to define initial parameters when declaring a new instance of a class. It is within the `init` function that we declare self-referential properties from parameters using `self` (i.e. `self.name`).
```swift
// Creating a Shape class
class Shape {                           // Name should be capitalized
    var numberOfSides = 0   
    
    init(name: String) {                // Explicitly declare type of data
       self.name = name
    }
    
    func simpleDescription() -> String {
        return "\(name): A shape with \(numberOfSides) sides."
    }
}

var octagon = Shape(name: "Octagon")    // Creates a new shape called octagon with name set to "Octagon"
octagon.numberOfSides = 8               // Sets numberOfSides property of octagon
println(octagon.simpleDescription())    // Prints "Octagon: A shape with 8 sides."
```

You can also create **subclasses**, which are specific types of an already created class. YOu can do this by putting a colon `:` after the class name, followed by a space and the name of the parent class.
```swift
// For instance, a subclass of Shape:
class Square: Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        self.name = name
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {               // Notice the override!
        return "A square with sides of length \(sideLength)"
    }
}

let square = Square(sideLength: 6.1, name: "Boss-ass Square")
println("\(square.name): \(square.simpleDescription()) and an area of \(square.area()).")
// Prints "Boss-ass Square: A square with sides of length 6.1 and an area of 37.21."

```


### Closures

Closures are like methods: they're functions that manipulate certain values. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed (like with nested functions). You can write a closure without a name by surrounding code with curly braces `{}`. Use `in` to separate the arguments and return type from the body. 
```swift
var numbers = [20, 19, 7, 12]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
// This returns the numbers array with its values tripled.
```

When a closure’s type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.
```swift
let mappedNumbers = numbers.map({ number in 3 * number })
mappedNumbers
```

You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses.
```swift
let sortedNumbers = sorted(numbers) { $0 > $1 }
sortedNumbers
```

### Tuples

Tuples are ordered sets of values grouping multiple values into a single value. We can use tuples to return more than one value. The values in a tuple can be of any type (like in arrays). 
Despite being somewhat simple, you can do many things with tuples.

```swift
let coordinates = (latitude: 40.7127 North, longitude: 74.0059 West) // Coordinates to NYC
coordinates.latitude // 40.7127
coordinates.longitude // 74.0059
```

### Extensions

Extensions allow us to create new functionality to current classes, structures or enumerations. Basically retroactive modeling of original source code for our needs. Just as we can manipulate methods that already exist with closures, so, too, we can manipulate data types with extensions. 

```Swift 
extension SomeType {
    // new functionality to add to SomeType goes here
}

extension Double { // mess with double method in swift BECAUSE WE CAN!
  var mm: Double { return self / 1_000.0 }   // mess with mm
  }
let oneInch = 25.4.mm
println("One inch is \(oneInch) meters")   // prints "One inch is 0.0254 meters"
```
### Unicode Characters

#### Emoji

Xcode displays emoji's! OH HAPPY DAY!

For example, if you did var smiley = 😄, and then println(smiley), it will print 😄!

You can even use them as variables and declare var 😄 = "smiley", where println(😄) will print "smiley".

#### Other unicode characters

You can also declare other unicode characters, such as pi or a Chinese character, as variables and put them in your code.
