//
//  main.swift
//  p10952
//
//  Created by 김호세 on 2022/12/02.
//

import Foundation

var res: [Int] = []

while true {
  guard let line = readLine() else { break }
  let arr = line.components(separatedBy: " ").compactMap { Int($0) }

  if arr[0] == 0 && arr[1] == 0 {
    break
  }

  res.append(arr[0] + arr[1])
}

for r in res {
  print(r)
}
