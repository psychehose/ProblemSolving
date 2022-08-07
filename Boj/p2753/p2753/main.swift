//
//  main.swift
//  p2753
//
//  Created by 김호세 on 2022/02/02.
//

import Foundation


let intReadLine = readLine().flatMap { Int($0) } ?? 0

check: do {
    guard  intReadLine % 4 == 0 else {
        print(0)
        break check
    }
    if intReadLine % 100 != 0 || intReadLine % 400 == 0 {
        print(1)
        break check
    }
    print(0)
}
