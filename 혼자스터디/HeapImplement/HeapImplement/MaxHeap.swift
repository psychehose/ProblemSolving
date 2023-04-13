//
//  MaxHeap.swift
//  HeapImplement
//
//  Created by 김호세 on 2023/04/14.
//

import Foundation

protocol Heapable {
  func insert(_ val: Int)
  func printAll()

}

class Heap {
  private let type: HeapType
  private let heap: Heapable

  init(heapType: HeapType) {
    self.type = heapType
    self.heap = (type == .max) ? MaxHeap() : MinHeap()
  }

  func insert(_ val: Int) {
    heap.insert(val)
  }


  func printAll() {
    heap.printAll()
  }


}





class MaxHeap: Heapable {

  // 미리 가장 큰 값 넣어두는 이유는 나누는 연산에서 인덱스 아웃레인지를 방지하기 위해서 (계산편하게)

  var heap: Array<Int> = [Int.max]

  func printAll() {

    for item in 1 ..< heap.count {
      print(heap[item])
    }
  }

  func insert(_ val: Int) {

    heap.append(val)

    var child = heap.count

    while child > 1 && (heap[child / 2] < heap[child]) {
      heap.swapAt(child / 2, child)
      child = child / 2

    }

  }
}

class MinHeap: Heapable {

  var heap: Array<Int> = [Int.max]

  func printAll() {

    for item in 1 ..< heap.count {
      print(heap[item])
    }
  }

  func insert(_ val: Int) {

    heap.append(val)

    var child = heap.count

    while child > 1 && (heap[child / 2] < heap[child]) {
      heap.swapAt(child / 2, child)
      child = child / 2

    }

  }
}
