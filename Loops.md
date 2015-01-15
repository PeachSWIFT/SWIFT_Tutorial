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

#### For/in
