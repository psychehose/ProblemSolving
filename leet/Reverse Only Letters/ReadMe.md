내 풀이는 S를 받아서 s.enumerated().filter {} 를 통해서 특수문자는 Hashmap에 넣고 글자만 남게 필터링한다. 그런 다음 reversed를 통해서 뒤집고 keys를 정렬해서 insert를 통해 넣어주는 방식으로 구현했다.

```swift
func reverseOnlyLetters(_ s: String) -> String {

        var nonAlphabet: [Int: String.Element] = [:]

        let filtered = s.enumerated().filter { index, c  -> Bool in

            if (65 <= c.asciiValue! && c.asciiValue! <= 90) || (97 <= c.asciiValue! && c.asciiValue! <= 122) {
                return true
            }

            nonAlphabet[index] = c
            return false
        }
            .map { $0.element }


        var arr = Array(filtered.reversed())
        let sortedKeys = Array(nonAlphabet.keys).sorted(by: <)


        sortedKeys.forEach { key in
            arr.insert(nonAlphabet[key]!, at: key)
        }

        let res = String(arr)

        return res
    }
```



## i liked this answer. (not my answer)

놀랍다. 먼저 isLetter 이라는 메소드가 있는 지 몰랐고 removeLast()를 하면 return이 된다는 것은 알고 있었지만 이렇게 사용할 생각은 못했던 것 같다.

```swift
// not my answer
func reverseOnlyLetters(_ S: String) -> String {        
        let arr = Array(S)
        var letters = arr.filter({ $0.isLetter })        
        var result = [Character]()        
        for s in arr {
            result.append(s.isLetter ? letters.removeLast() : s)            
        }
        return String(result)
    }
```

