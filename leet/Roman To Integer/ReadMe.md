## i liked this answer. (not my answer)

나는 While 문을 이용해서 index를 증가시키고 적절하게 continue를 이용해서 풀었다. 아래의 방법은 처음에 왜 -2 * value 를 하는 지 이해가 안갔었는데, prev에서 이미 값을 한번 더했기 때문이였다. 어떻게 이런 생각을

```swift
class Solution {
    func romanToInt(_ s: String) -> Int {
		var num: Int = 0
		var prev: Character = " "
		let map: [Character : Int] = [
			"I": 1,
			"V": 5,
			"X": 10,
			"L": 50,
			"C": 100,
			"D": 500,
			"M": 1000,
		]
		        
		for c in s {
			if prev == "I" && (c == "V" || c == "X") {
				num += (map[c]! - 2 * map[prev]!)
			} else if prev == "X" && (c == "L" || c == "C") {
				num += (map[c]! - 2 * map[prev]!) 
			} else if prev == "C" && (c == "D" || c == "M") {
				num += (map[c]! - 2 * map[prev]!)
			} else {
				num += map[c]!
			}
			prev = c
		}
        
        return num
    }
    
}
```