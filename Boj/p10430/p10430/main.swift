//
//  main.swift
//  p10430
//
//  Created by 김호세 on 2022/02/27.
//

import Foundation


let read = readLine()?.components(separatedBy: " ").compactMap({ str in
    Int(str)
})

read.map { numbers in
    //1
    print((numbers[0] + numbers[1]) % numbers[2])
    // 2
    print(((numbers[0] % numbers[2]) + (numbers[1] % numbers[2])) % numbers[2])
    // 3
    print((numbers[0] * numbers[1]) % numbers[2])
    // 4
    print(((numbers[0] % numbers[2]) * (numbers[1] % numbers[2])) % numbers[2])
}
