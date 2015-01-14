# Basic Syntax

### ["Hello, world!"](#helloworld)

First, of course, we will start by teaching you how to create a simple program that outputs "Hello, World!"
The command for output is `println()`. Therefore, to output "Hello, World!", we only need this:
```println("Hello, World!")
```

That's it! That's the whole program!

### [Values: Constants and Variables](#values)

Something unique to Swift is the capability of declaring not only variables, but **constants**. This allows you to create values that stay the same and are unable to change, no matter the code that follows. This means that if you accidentally do something that might change your value, it'll be all, "Nice try, fool!" and not listen. It also means that no one can fuck with your shit. Therefore, constants are a lot safer.

Variables are declared as usual, with `var`. Constants, however, are declared with `let`. For example, if I wanted to make a string that needs to be changed, but an integer that needs to say the same, I would write this:
```var stringVariable = ""
let integerConstant = 50
```

When you give Swift a value, it will always infer its type. However, if you would like to declare your value as a specific data type, you can do so by adding a colon after the value name and typing the value type before the equals sign. Like so:
```let implicitString = "This is obviously a string because there are quotes"
let implicitInteger = 52 \\ This is inferred as an integer because it is written as a whole number
let implicitDouble = 67.0 \\ This is inferred as a double because it has a decimal point
let explicitString: String = 51 \\ This specifies what would usually be an integer as a string
let explicitDouble: Double = 72 \\ This specifies that this decimal-point-less number should be treated as a double rather than an integer
```

However, much like with our other languages, if you have a value that is one type and you want to combine it with another type, that don't fly. If you need to do this, you can modify the type within the context in which you are inserting this value.
If that didn't make much sense, this example might:
```let words = "On June 12th, I am turning "
let age = 24
let sentence = words + String(age)
```

