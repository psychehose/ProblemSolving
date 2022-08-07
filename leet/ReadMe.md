### I liked this answer. (not my answer )

```swift
func twoSum(_ nums: [Int], _ target: Int) -> [Int] { // return indexes
    var dict: [Int: Int] = [:]
    
    for (index, value) in nums.enumerated() {
        let missingValue = target - value // dynamic variable of value (for single pass)
        
        if let indexfound = dict[missingValue] {
            return [index, indexfound] // we return the index in any order :)
        }
        
        dict[value] = index // this is key, how we populate the dict and so that the next time enters the if.
    }
    
    return [Int]() // we could used the statement of regular array but that would use more memory, in prod apps we would use `var array: [Int] = []`
}
```

