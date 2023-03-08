//
//  main.swift
//  p2742
//
//  Created by 김호세 on 2022/12/04.
//


import Foundation
let count = readLine().flatMap { Int ($0) }!

for i in 0 ..< count {
  print(count - i)
}

