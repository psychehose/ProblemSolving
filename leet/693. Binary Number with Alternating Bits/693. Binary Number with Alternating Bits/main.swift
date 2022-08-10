//
//  main.swift
//  693. Binary Number with Alternating Bits
//
//  Created by 김호세 on 2022/08/11.
//

import Foundation

class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {

        if n == 3 {
            return true
        }

        var input = n
        var flag: Int = input % 2
        input = input / 2

        while input / 2 != 0 {

            if flag == (input % 2) {
                return false
            }

            flag = input % 2
            input = input / 2

            if input == 1 {
                if flag == 1 { return false }
                break
            }
        }
        return true
    }
}

Solution().hasAlternatingBits(13)
