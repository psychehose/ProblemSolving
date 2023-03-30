//
//  main.swift
//  Permutation
//
//  Created by 김호세 on 2023/03/31.
//

import Foundation

print("Hello, World!")


var n = [1, 2, 3]
var r = 2

var result: [Int] = Array(repeating: 0, count: r)

var checkList = Array(repeating: 0, count: 3)

var ttt = [[Int]]()



//func DFS(depth: Int, n: [Int], r: Int, inout result: [[Int]]) -> [[Int]] {
//
//
//  if depth == r {
//    // 종료
////    result.append
//  }
//
//  else {
//    for i in 0 ..< n.count {
//      if checkList[i] == 0 {
//        result[depth] = n[i]
//        checkList[i] = 1
//        DFS(depth: depth + 1)
//        checkList[i] = 0
//      }
//    }
//  }
//}


func DFS(depth: Int) {
  if depth == r {
    // 종료
  }
  else {
    for i in 0 ..< n.count {
      if checkList[i] == 0 {
        result[depth] = n[i]
        checkList[i] = 1
        DFS(depth: depth + 1)

        checkList[i] = 0
      }
    }
  }
}

//
//
//DFS(depth: 0)
//print(ttt)
