//
//  main.swift
//  Palindrome Number
//
//  Created by 김호세 on 2022/08/07.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        let str = String(x)
        var left = str.prefix(str.count / 2)
        var right = str.suffix(str.count / 2)

        let leftString = String(left)
        let rightString = String(right.reversed())

        if leftString == rightString {
            return true
        } else {
            return false
        }
    }
}
