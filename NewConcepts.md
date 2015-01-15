# New Concepts

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
### Classes



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
