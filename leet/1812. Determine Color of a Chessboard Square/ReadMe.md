# My Answer

Ascii Code로 쉽게 해결하였다. 별로 어려울 건 없었다고 생각한다.

```swift

class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {

        var copy = coordinates
        var res: UInt8 = 0

        for _ in 0 ..< coordinates.count {


            res += copy.popLast()?.asciiValue ?? 0

        }

        return res % 2 == 0 ? true : false
    }

    /**
     a = 97
     b = 98
     ...
     h = 104


     1 = 48
     ...
     8 = 55



     black = odd, white = even
     **/
}
```

## I liked this answer(not my answer)

방법은 다 비슷한 것 같다. 그래서 비트 연산으로 푸는 게 가장 인상이 깊었다.
reduce로 푸는 방법도 괜찮은 것 같다.

```swift
func squareIsWhite(_ coordinates: String) -> Bool {
	var num: UInt32 = 0

	coordinates.forEach {
		if let i = UInt32(String($0)) {
			num = (num & i) ^ (~num & ~i) // second char
		} else {
			num = $0.unicodeScalars.first!.value // first char
		}
	}

	return num % 2 == 0
}
```
