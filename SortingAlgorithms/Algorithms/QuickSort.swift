//
//  QuickSort.swift
//  SortingAlgorithms
//
//  Created by Aleksandr Aniskin on 26.12.2021.
//

/*
 Time complexity:
 Worst time: O(n²)
 The best time: O(n)
 */

import Foundation

struct QuickSort{
    func quickSort<T: Comparable>(_ value: [T]) -> [T] {
      guard value.count > 1 else { return value }

      let pivot = value[value.count/2]
      let less = value.filter { $0 < pivot }
      let equal = value.filter { $0 == pivot }
      let greater = value.filter { $0 > pivot }

      return quickSort(less) + equal + quickSort(greater)
    }
}
