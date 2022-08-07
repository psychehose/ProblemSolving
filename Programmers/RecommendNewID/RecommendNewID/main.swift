//
//  main.swift
//  RecommendNewID
//
//  Created by 김호세 on 2022/08/01.
//

import Foundation

func solution(_ new_id:String) -> String {


    var check: Int
    var checkpoint: Int

    var arr:[(Int, Int)] = []

    // 첫번쨰

    var lower = new_id.lowercased()

    // 두번째
    lower.removeAll { char in


        guard
            97 ... 122 ~= Int(char.asciiValue!) ||
                49 ... 57 ~= Int(char.asciiValue!) ||
                77 ... 78 ~= Int(char.asciiValue!) ||
                127 == Int(char.asciiValue!) else {
                    return true
                }

        return false
    }

    // 세번째부터

    for (index, val) in lower.enumerated() {
        if val == "." {
            check = index

            for st in (check + 1) ..< lower.count {
                if lower[lower.index(lower.startIndex, offsetBy: st)] == "." {

                    checkpoint = st
                    continue
                } else {

                    arr.append((check, st - 1))
                    break
                }
            }
        }
    }


    lower.fi

    print(arr)

    print(lower)
    return ""
}


// Problem....
// 3번째는 일단 .인 것들을 다 찾는다. 그리고 그 인덱스들을 배열에 append 한다. 그리고 reduce 함수를 통해서 뭔가를 해볼 수 있지 않을까
// 문자열 자체를 인덱스 돌고 싶지 않다. 스위프트 너무 불편해
solution(".12..4hed...$%#$%$^&*...43523%@#4dsf.dsfdsv")
