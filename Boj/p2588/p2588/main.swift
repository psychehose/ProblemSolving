//
//  main.swift
//  p2588
//
//  Created by 김호세 on 2022/02/27.
//

import Foundation

let firstNumber = readLine().flatMap { Int($0) } ?? 0
let secondNumber = readLine().flatMap { Int($0) } ?? 0

let third = secondNumber % 10
let second = (secondNumber / 10) % 10
let one = (secondNumber / 100 ) % 10

print(firstNumber * third)
print(firstNumber * second)
print(firstNumber * one)
print(firstNumber * secondNumber)
