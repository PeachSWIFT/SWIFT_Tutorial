# Comparing Swift to Ruby

  * [Printing](./RubyCompare.md#printing)
  * [Declaring Values](./RubyCompare.md#declaring-values)
  * [Objects/Dictionaries](./RubyCompare.md#objectsdictionaries)
  * [Conditionals](./RubyCompare.md#conditionals)

Swift, like Ruby, was created out of a need for a more simplified, user-friendly programming language. Therefore, it is very easy to compare (and contrast!) the two. 

### Printing

####Ruby
```ruby
puts "Hello, world!"
```
####Swift
```swift
println("Hello, world!")
```

### Declaring Values

####Ruby
```ruby
newVariable = 10
```
####Swift
```swift
// variable
var newVariable = 10
//constant
let newVariable = 10
```

### Objects/Dictionaries

####Ruby
```ruby
# Object/Hash
newObject = {
  "thing": "stuff",
  "stuff": "thing"
}
```
####Swift
```swift
// Dictionary
var newDictionary = {
  "thing": "stuff",
  "stuff": "thing"
}
```

### Conditionals

####Ruby
```ruby
lang = "ruby"

if lang == "ruby"
  puts "Yeah!"
elsif lang == "swift"
  puts "Woohoo!"
else
  puts "You fail"
end
```
####Swift
```swift
let lang = "swift"

if lang === "swift" {
  println("Woohoo!")
}  
else if lang === "ruby" {
  println("Yeah!")
}
else {
  println("You fail")
}
```


[back to index](./README.md)
