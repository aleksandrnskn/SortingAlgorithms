//
//  BubbleSort.swift
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

struct BubbleSort{
    func bubbleSort<T: Comparable>(_ value: [T]) -> [T] {
        var sorted = value
        
        //алгоритм повторяется n-1 раз, где n - количество элементов в массиве
        for _ in 0...sorted.count {
            for value in 1...sorted.count - 1 {
                //элемент массива сравнивается с последующим
                if sorted[value-1] > sorted[value] {
                    let largerValue = sorted[value-1]
                    sorted[value-1] = sorted[value]
                    sorted[value] = largerValue
                }
            }
        }
        return sorted
    }
    
    func bubleSortB<T:Comparable>(_ list: [T]) -> [T] {
        var sortList = list

        //алгоритм повторяется n-1 раз, где n - количество элементов в массиве
        for i in 0..<(sortList.count-1) {
            for j in 0..<(sortList.count-1-i) {
                //элемент массива сравнивается с последующим
                if sortList[j] > sortList[j+1] {
                    //элементы меняются местами, таким образом:
                    //"легкие" элементы перемещаются к началу списка
                    //"тяжёлые" элементы - к концу списка
                    sortList.swapAt(j, j+1)
                }
            }
        }
        return sortList
    }
}
