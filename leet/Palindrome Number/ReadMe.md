### I liked this answer ( not my answer).

```swift
func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    var num = x,  reversed = 0
    
    while num != 0 {
        reversed = reversed * 10 + num % 10
        num = num/10
    }
    return reversed == x
}
```

