//
//  main.swift
//  Report
//
//  Created by 김호세 on 2022/07/30.
//


import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {

    let noDupList = Array(Set(report))

    var result: [Int] = []

    var reportedCountHash: [String: Int] = [:]
    var reportedPeopleHash: [String: [String] ] = [:]

    for i in id_list {

        reportedCountHash[i] = 0
        reportedPeopleHash[i] = []
    }


    noDupList.forEach { report in
        let arr = report.components(separatedBy: " ")
        let reportingPeople = arr[0]
        let reportedPeople = arr[1]

        let before = reportedCountHash[reportedPeople]!

        reportedCountHash.updateValue(before + 1, forKey: reportedPeople)
        reportedPeopleHash[reportingPeople]!.append(reportedPeople)
    }

    let t = reportedCountHash.filter { $0.value >= k }

    id_list.forEach { id in

        result.append(Array(Set(reportedPeopleHash[id]!).intersection(Set(t.keys))).count)
    }


    return result
}
