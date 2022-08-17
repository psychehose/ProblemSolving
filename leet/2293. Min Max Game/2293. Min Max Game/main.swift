//
//  main.swift
//  2293. Min Max Game
//
//  Created by 김호세 on 2022/08/18.
//

import Foundation

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




