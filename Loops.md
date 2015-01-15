# Loops

### While

Use `while` to repeat a block of code until a condition changes. The condition of a loop is at the end instead, ensuring that the loop is run at least once.
```swift
var n = 2
while n < 100 {
    n = n * 2
}
println(n)
```
#### Do/while

Use `do...while` if you want the condition to be checked *after* the code is run instead of *before*.
```swift
var m = 2
do {
    m = m * 2
} while m < 100
println(m)
```

### For

The `for` loop allows us to specify a range and declare a counter variable within the loop statement. As we know, this is usually preferred over the `while` loop.

You can also either implicitly initialize a variable using `for...in`...
```swift
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
println(firstForLoop)
```
...or write the conditions like you would in languages such as JavaScript or C.
```swift 
var secondForLoop = 0
for var i = 0; i < 4; ++i { // note the syntax is ++i, NOT i++
    secondForLoop += i
}
println(secondForLoop)
```

You can also use the `for...in` style to loop through arrays...
```swift
let array = [1, 2, 3]

for num in array {
    println(num)
}
// This will print all the numbers in the array
```
...or dictionaries:
```swift
let farm = {
    "Cow": "Moo",
    "Duck": "Quack",
    "Sheep": "Baaa"
}

for (animal, sound) in farm {               // Notice that you can call keys and values as parameters
    println("The \(animal) goes \(sound).") // without modifying your dictionary.
}
```
