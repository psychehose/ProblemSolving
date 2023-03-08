//
//  main.swift
//  p10950
//
//  Created by 김호세 on 2022/12/02.
//

import Foundation

let number = readLine().flatMap { Int($0) }!

var res: [Int] = []

for _ in 0 ..< number {
  let read = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
  res.append(read[0] + read[1])
}

for r in res {
  print(r)
}


