# Conditionals

### If/else

If/else is your classic conditional. You do not need brackets for the conditional statement, and the syntax for additional `if` conditions is `else if` (like in JavaScript).
```swift
let age = 24

if age < 21 {
  println("You can't drink alcohol!")
}  
else if age == 21 {
  println("Happy birthday!")
}
else {
  println("L'chaim!")
}
```

One difference between Swift and most languages is that `if` statements must be Boolean expressions. This means that simply writing a function `if age {...}` to determine if age is actually a present value is an error, and is not automatically evaluated as `if age == true` or `if age != 0`. 

#### Optional Values

You can use `if` and `let` together to work with values that might be missing. These values are represented as **optionals**. An **optional value** either contains a value or contains `nil` to indicate that the value is missing. Write a question mark `?` after the type of a value to mark the value as optional. If the optional value is `nil`, the conditional is `false` and the code in braces is skipped. Otherwise, the optional value is assigned to the constant after `let`, which makes the value available inside the block of code.
```swift
var optionalName: String? = "Johnny Appleseed" 
var greeting = "Hello!"
if let name = optionalName {    // This declares a variable called name to check, which is set to optionalName.
    greeting = "Hello, \(name)" // If optionalName were set to nil, this part of the code would be skipped.
}
```
*(It's weird and confusing, we know.)*


### Switch

Is basically like `if...else if`, but instead presents different situations for one value.
```swift
var vegetable = "red pepper"

switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"): // The hasSuffix method checks the end of a string.
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}
```
