# New Concepts

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

Extensions allow us to create new functionality to current classes, structures or enumerations. Basically retroactive modeling of original source code for our needs. 

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
### Emoji

Xcode displays emoji's! OH HAPPY DAY!

For example, if you did var smiley = 😄, and then println(smiley), it will print 😄!

You can even use them as variables and declare var 😄 = "smiley", where println(😄) will print "smiley".
