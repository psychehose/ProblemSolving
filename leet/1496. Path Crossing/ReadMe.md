## I like this answer (not my answer).

asciiCode 값을 이용한다는 게 되게 신선해서 이 답변이 가장 마음에 들었다.

```swift
class Solution {
    struct Pair: Hashable {
        var x: Int
        var y: Int
    }
    
    var directions: [UInt8: Pair] = [:]

    func isPathCrossing(_ path: String) -> Bool {
        directions[78] = Pair(x: 0, y: -1)
        directions[69] = Pair(x: 1, y: 0)
        directions[83] = Pair(x: 0, y: 1)
        directions[87] = Pair(x: -1, y: 0)
        
        var visited: Set<Pair> = [Pair(x: 0, y: 0)]
        var current = Pair(x: 0, y: 0)
        for ch in path {
            if let asciiValue: UInt8 = ch.asciiValue, let direction = directions[asciiValue] {
                current = Pair(x: current.x + direction.x, y: current.y + direction.y)
                if visited.contains(current) {
                    return true
                }
                visited.insert(current)
            }
        }
        return false
    }
}
```













## My answer

Dictionary와 Set을 이용하면 간단하게 풀 수 있을거라 생각했다. 그런데, 좌표를 튜플로 하려고 했는데 튜플 자체에는 Hashable이 구현 되지 않아서 Hashable을 만족하는 sturct을 만들어줘야 했다.  이렇게 풀기 싫어서, 자체로 구현되어 있는 CGPoint를 사용했고 enum을 통해서 문제를 풀었다.

```swift
struct Point: Hashable {
	let x: Int
	let y: Int
}
```

```swift
class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        enum Direction: String, CaseIterable {
            case N
            case S
            case E
            case W

            var val: (CGFloat, CGFloat) {
                switch self {
                case .N:
                    return (0, 1)

                case .S:
                    return (0, -1)

                case .E:
                    return (1, 0)

                case .W:
                    return (-1, 0)
                }
            }
        }

        var arr: [CGPoint] = [CGPoint(x: 0, y: 0)]
        var cur: CGPoint = CGPoint(x: 0, y: 0)

        for c in path {
            let direction = Direction(rawValue: String(c))!

            let nextPoint = CGPoint(x: cur.x + direction.val.0, y: cur.y + direction.val.1)


            if arr.contains(nextPoint) {
                return true
            }

            arr.append(nextPoint)
            cur = nextPoint
        }

        return false
    }
}
```

## 