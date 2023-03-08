//
//  main.swift
//  14. Longest Common Prefix
//
//  Created by 김호세 on 2023/03/08.
//

import Foundation

class Solution {
  static func common(_ str1: String, _ str2: String) {


    let test = str1.commonPrefix(with: str2)

    print(test)

    str2.count


  }

}

Solution.common("hose", "hodd")

