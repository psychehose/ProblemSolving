//
//  main.swift
//  p11721
//
//  Created by 김호세 on 2022/12/04.
//

import Foundation


// 54개 / 10 5
var lines = readLine()!
let count = lines.count / 10

for _ in 0 ..< count {
  print(lines[lines.startIndex ..< lines.index(lines.startIndex, offsetBy: 10)])
  lines.removeFirst(10)
}
if !lines.isEmpty {
  print(lines)
}
