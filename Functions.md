# Functions

Use `func` (gotta have that `func`!) to declare a function. Call a function by following its name with a list of arguments in parentheses. If you want the result of the function to be an explicit type, use `->` to separate the parameter names and types from the function’s return type.
```swift
func howOld(name: String, age: Int) -> String { // Notice that the parameters themselves have explicit requirements for type
  return "\(name) is \(age) years old."
}
howOld("Shoshanah", 24) // This will print "Shoshanah is 24 years old."
```

Use a [tuple](./NewConcepts.md#tuples) to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
```swift
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
 
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
 
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum
statistics.2
```

Functions can also be nested. Nested functions are within the scope of their outer functions, and therefore have access to all the variables of the outer functions.
```swift
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
```

You can even make a function return another function as its value!
```swift
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
```
