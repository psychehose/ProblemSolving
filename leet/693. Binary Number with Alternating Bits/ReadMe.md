## I liked this answer (not my answer)

Bit 연산자를 복습할 수 기회가 되어서 좋았다.

```swift
class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var previousBit = n & 1
        var n = n >> 1
        while n > 0 {
          if previousBit == n & 1 {
              return false
          }
          previousBit ^= 1
          n = n >> 1 
        }
        return true
    }
}
```



