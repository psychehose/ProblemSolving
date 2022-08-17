## My Answer.

이중 루프로 뭔가 어렵게 푼 거 같은 느낌이다.  min, max 함수를 이용했으면 좀 더 간단하게 보일 거 같긴 한데, 사실 사용하고 싶지 않았다. 뭔가 좀 아름답게 푸는 법이 없었을까? Leet Discuss에서 대부분(그래봤자 3개 밖에 없다.) 다 이중루프로 풀었다.

```swift
class Solution {
    func minMaxGame(_ nums: [Int]) -> Int {
        var newNums = nums
        var standardArr: [Int] = []

        while true {

            standardArr = []

            if newNums.count == 1 {
                return newNums[0]
            }

            for i in 0 ... (newNums.count - 1) / 2 {

                if i %  2 == 0 {
                    standardArr.append(newNums[2 * i] <= newNums[(2 * i) + 1] ? newNums[2 * i] : newNums[(2 * i) + 1])
                }
                else {
                    standardArr.append(newNums[2 * i] <= newNums[(2 * i) + 1] ? newNums[(2 * i) + 1] : newNums[2 * i])
                }

            }
            newNums = standardArr
        }
    }
}
```



## I liked this answer(not my answer)

재귀로 푸는 방법도 있다.

```swift
final class Solution {
    func minMaxGame(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        let count = nums.count/2
        var newNums: [Int] = Array(repeating: 0, count: count)
        for idx in 0..<count {
            let multiplied = 2*idx
            if idx%2 == 0 {
                newNums[idx] = min(nums[multiplied], nums[multiplied+1])
            } else {
                newNums[idx] = max(nums[multiplied], nums[multiplied+1])
            }
        }
        return minMaxGame(newNums)
    }
}
```