//
//  main.swift
//  p11718
//
//  Created by 김호세 on 2022/12/02.
//

import Foundation


var lines: [String] = []
while true {
  guard let line = readLine() else {
    break
  }
  lines.append(line)
}

for line in lines {
  print(line)
}
