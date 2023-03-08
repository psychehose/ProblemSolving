//
//  main.swift
//  p10951
//
//  Created by 김호세 on 2022/12/02.
//

import Foundation


var res: [Int] = []

while true {
  guard let line = readLine() else { break }
  let arr = line.components(separatedBy: " ").compactMap { Int($0) }
  res.append(arr[0] + arr[1])
}

for r in res {
  print(r)
}

