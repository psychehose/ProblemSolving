//
//  main.swift
//  p11021
//
//  Created by 김호세 on 2022/12/02.
//

import Foundation


var res: [Int] = []

let count = readLine().flatMap { Int($0) }!

for _ in 0 ..< count {
  let line = readLine()!.components(separatedBy: " ")
    .compactMap { Int($0) }
  res.append(line[0] + line[1])

}

for (i, r) in res.enumerated() {
  print("Case #\(i + 1): \(r)")
}
