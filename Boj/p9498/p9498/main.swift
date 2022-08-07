//
//  main.swift
//  p9498
//
//  Created by 김호세 on 2022/01/31.
//

import Foundation
/*
 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오
 */

let getTheString = readLine().flatMap { Int($0) }.map { $0 }

switch getTheString! {
case 90 ... 100:
    print("A")
case 80 ... 89:
    print("B")
case 70 ... 79:
    print("C")
case 60 ... 69:
    print("D")
default:
    print("F")
}
