//
//  SelectionSort.swift
//  SortingAlgorithms
//
//  Created by Aleksandr Aniskin on 25.12.2021.
//

/*
 Time complexity:
 Worst time: O(n²)
 The best time: O(n²)
 */

import Foundation

struct SelectionSort{
    func selectionSort<T: Comparable>(_ value: [T]) -> [T] {
        guard value.count > 1 else { return value }

        var sorted = value
        
        //ищем минимальный элемент в массиве
        for x in 0 ..< sorted.count - 1 {
            var lowest = x
            for y in x + 1 ..< sorted.count {
                if sorted[y] < sorted[lowest] {
                    lowest = y
                }
            }
            //меняем местами элементы пока весь массив не будет отсортирован
            if x != lowest {
                sorted.swapAt(x, lowest)
            }
        }
        return sorted
    }
}
