//
//  InsertionSort.swift
//  SortingAlgorithms
//
//  Created by Aleksandr Aniskin on 25.12.2021.
//

/*
 Time complexity:
 Worst time: O(n²)
 The best time: O(n)
 */

import Foundation

struct InsertionSort{
    func insertionSort<T: Comparable>(_ value: [T]) -> [T] {
        var sorted = value
        for x in 1..<sorted.count {
            var y = x
            while y > 0 && sorted[y] < sorted[y - 1] {
                sorted.swapAt(y - 1, y)
                y -= 1
            }
        }
        return sorted
    }
}
