# Basic Syntax

### "Hello, world!"

First, of course, we will start by teaching you how to create a simple program that outputs "Hello, World!"
The command for output is `println()`. Therefore, to output "Hello, World!", we only need this:
```swift
println("Hello, World!")
```

That's it! That's the whole program!

### Operators
Symbol | What it's called | What it does | Example expression | Example output
--- | --- | --- | --- | ---
 `+` | Plus | Adds numbers | `1 + 1` | 2
 `-` | Minus | Subtracts numbers | `5 - 4` | 1
 `*` | Times | Multiplies numbers | `3 * 6` | 18
 `/` | Divided by | Divides numbers | `10 / 2` | 5
 `%` | Modulus | Provides the remainder when one number is divided by another | `16 % 3` | 1
 `<` | Less than | Checks if a number is less than another | `3 < 3` | false
 `<=` | Less than or equal to | Checks if a number is less than or equal to another | `3 <= 3` | true
 `>` | Greater than | Checks if a number is greater than another | `5 > 5` | false
 `>=` | Greater than or equal to | Checks if a number is greater than or equal to another | 5 >= 5 | true
 `=` | Equal | Sets values | `let x = 5` | 5
 `==` | Logical equal | Checks if one value is equal to another | `5 == 4` | false
 `!=` | Not equal | Checks if one value is not equal to another | `6 != 7` | true
 `===` | Identical, or Threequals if you're a badass | Checks if one value is ABSOLUTELY equal to another (i.e. value, type, capitalization, the whole shebang) | `4 === "4"` | false
 `!==` | Not Identical | Checks if one value is not absolutely equal to another | `6 !== "6"` | true
 `~=` | Pattern match | Checks if one value follows the same patter as another | `(1, 2) ~= (x, y)` | true
 && | AND | In a conditional, sets the condition that follows as an additional *required* condition | `if x === 5 && y === 7` | (Expression following if statement would only print if x = 5 AND y = 7)
 `||` | OR | In a conditional, sets the condition that follows as an additional *possible* condition | `if x === 5 || y === 7` | (Expression following if statement would print as long as x = 5 or y = 7 (or, of course, both))
 `++` | Increment | Increments the given value by 1 | `++i` | (If `i` was previously 2, it would now be 3)
 `--` | Decrement | Decrements the given value by 1 | `--i` | (If `i` was previously 3, it would now be 2)
 `+=` | Plus-equals | Assigns the previously assigned value with the given value added to it | `i += 3` | (If `i` was previously 2, it would now be 5)
 `-=` | Minus-equals | Assigns the previously assigned value with the given value subtracted from it | `i -= 2` | (If `i` was previously 4, it would now be 2)
 `*=` | Times-equals | Assigns the previously assigned value multiplied by the given value | `i *= 2` | (If `i` was previously 4, it would now be 8)
 `/=` | Divide-equals | Assigns the previously assigned value divided by the given value | `i /= 2` | (If `i` was previously 4, it would now be 2)

### Values: Constants and Variables

Something unique to Swift is the capability of declaring not only variables, but **constants**. This allows you to create values that stay the same and are unable to change, no matter the code that follows. This means that if you accidentally do something that might change your value, it'll be all, "Nice try, fool!" and not listen. It also means that no one can fuck with your shit. Therefore, constants are a lot safer.

Variables are declared as usual, with `var`. Constants, however, are declared with `let`. For example, if I wanted to make a string that needs to be changed, but an integer that needs to say the same, I would write this:
```swift
var stringVariable = ""
let integerConstant = 50
```

When you give Swift a value, it will always infer its type. However, if you would like to declare your value as a specific data type, you can do so by adding a colon after the value name and typing the value type before the equals sign. Like so:
```swift
let implicitString = "This is obviously a string because there are quotes"
let implicitInteger = 52 // This is inferred as an integer because it is written as a whole number
let implicitDouble = 67.0 // This is inferred as a double because it has a decimal point
let explicitString: String = 51 // This specifies what would usually be an integer as a string
let explicitDouble: Double = 72 // This specifies that this decimal-point-less number should be treated as a double rather than an integer
```

However, much like with our other languages, if you have a value that is one type and you want to combine it with another type, that don't fly. If you need to do this, you can modify the type within the context in which you are inserting this value.
If that didn't make much sense, this example might:
```swift
let words = "On June 12th, I am turning "
let age = 24
let sentence = words + String(age)
//I expect birthday presents from everyone this year -Shosh
```

However, there is another way to include values in strings--by simply putting the values in parentheses, and putting a backslash `\` before the parentheses, like so:
```swift
let daysPerWeek = 5
let totalWeeks = 12
let weeksWDI = "WDI is \(totalWeeks) weeks long."
let daysWDI = "We will spend \(totalWeeks * daysPerWeek) days total at GA."
```

### Arrays

Arrays store many values in one. If you've already done object-oriented programming, you know the drill:
```swift
var members = ["Alvin", "Joel", "Shoshanah"]

var members[2] = "Shoshanah Weisinger" // array now contains ["Alvin", "Joel", "Shoshanah Weisinger"]
```

To initialize an empty array, you can either initialize it implicitly with a pair of square brackets `[]` or you can declare the value type explicitly:
```swift
// Implicit option:
var emptyArray = []

// Explicit option:
var emptyArray = [String]()
```

### Dictionaries

In Swift, what we usually might call "values" or "hashes" are called **dictionaries**, and the brackets are *square* `[]` rather than curly `{}`.
```swift
var hometowns = [
  "Shoshanah": "Los Angeles",
  "Joel": "Amsterdam",
  "Alvin": "New York"
]

hometowns["Alvin"] = "Brooklyn" // updates Alvin's hometown
```

To initialize an empty dictionary, similar to how you do it with arrays, you can either initialize it implicitly with a pair of square brackets with a colon in the middle `[:]` or you can declare the value type explicitly:
```swift
// Implicit option:
var emptyDictionary = [:]

// Explicit option
var emptyDictionary = [String: Float]()
```


