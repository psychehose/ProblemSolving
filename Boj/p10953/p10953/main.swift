//
//  main.swift
//  p10953
//
//  Created by 김호세 on 2022/12/02.
//


import Foundation


var res: [Int] = []

let count = readLine().flatMap { Int($0) }!

for _ in 0 ..< count {
  let line = readLine()!.components(separatedBy: ",")
    .compactMap { Int($0) }
  res.append(line[0] + line[1])

}

for r in res {
  print(r)
}
