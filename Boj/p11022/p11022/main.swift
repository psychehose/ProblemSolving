//
//  main.swift
//  p11022
//
//  Created by 김호세 on 2022/12/02.
//


import Foundation


var res: [String] = []

let count = readLine().flatMap { Int($0) }!

for i in 0 ..< count {
  let line = readLine()!.components(separatedBy: " ")
    .compactMap { Int($0) }
  res.append("Case #\(i + 1): \(line[0]) + \(line[1]) = \(line[0] + line[1])" )

}

for r in res {
  print(r)
}
