//
//  main.swift
//  p11720
//
//  Created by 김호세 on 2022/12/02.
//

import Foundation

var res: Int = 0

let count = readLine().flatMap { Int($0) }!

let line = readLine().flatMap { Int($0) }!
var cur = 10

print(line)

for i in 0 ..< count {
  res += line / (count - (i + 1))
}


while line != 0 {
  line / cur
}

// 789
// 10 100
