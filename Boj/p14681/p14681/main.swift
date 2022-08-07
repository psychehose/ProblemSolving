//
//  main.swift
//  p14681
//
//  Created by 김호세 on 2022/03/26.
//

import Foundation



let xPos = readLine().flatMap { Int($0) } ?? 0
let yPos = readLine().flatMap { Int($0) } ?? 0

let pos = (xPos, yPos)

switch pos {
case let (x,y) where x > 0 && y > 0:
    print("1")
case let (x,y) where x < 0 && y > 0:
    print("2")
case let (x,y) where x < 0 && y < 0:
    print("3")
case let (x,y) where x > 0 && y < 0:
    print("4")
case (_, _):
    print("err")
}
