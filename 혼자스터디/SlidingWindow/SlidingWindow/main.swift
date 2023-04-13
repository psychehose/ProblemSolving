//
//  main.swift
//  SlidingWindow
//
//  Created by 김호세 on 2023/04/12.
//

import Foundation

let n = 5
let k = 3
let arr = [0, 1, 2, 3, 4]

//for(int i=0;i<N-K;i++) {
//  int sum=0;
//  for(int j=0;j<K;j++) {
//    sum=sum+arr[i+j];
//  }
//  System.out.println(sum);
//}

for i in 0 ..< n-k+1 {
  var sum = 0

  for j in 0 ..< k {
    sum += arr[i+j]
  }

  print(sum)
}


var cnt = 0

var sum = 0

for i in 0 ..< arr.count {
  sum += arr[i]
  print(sum)
  cnt += 1

  if cnt >= k {
    sum -= arr[i-k+1]
  }
}


