//
//  main.swift
//  1812. Determine Color of a Chessboard Square
//
//  Created by 김호세 on 2022/08/26.
//

import Foundation

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
