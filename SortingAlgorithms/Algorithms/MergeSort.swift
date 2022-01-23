//
//  MergeSort.swift
//  SortingAlgorithms
//
//  Created by Aleksandr Aniskin on 25.12.2021.
//

/*
 Time complexity:
 Worst time: O(n log(n))
 The best time: O(n log(n))
 */

import Foundation

struct MergeSort{
    private func merge<T: Comparable>(valueA: [T], valueB: [T]) -> [T] {
        var valueAIndex = 0
        var valueBIndex = 0
        
        // массив уже "слитых" элементов
        var sortedArray = [T]()
        
        // разделяем массив до тех пор пока это возможно
        while valueAIndex < valueA.count && valueBIndex < valueB.count {
            if valueA[valueAIndex] < valueB[valueBIndex] {
                sortedArray.append(valueA[valueAIndex])
                valueAIndex += 1
            } else if valueA[valueAIndex] > valueB[valueBIndex] {
                sortedArray.append(valueB[valueBIndex])
                valueBIndex += 1
            } else {
                sortedArray.append(valueA[valueAIndex])
                valueAIndex += 1
                sortedArray.append(valueB[valueBIndex])
                valueBIndex += 1
                
            }
        }
        
        // сравниваем разделённые части и "сливаем" в правильном порядке
        while valueAIndex < valueA.count {
            sortedArray.append(valueA[valueAIndex])
            valueAIndex += 1
        }
        while valueBIndex < valueB.count {
            sortedArray.append(valueB[valueBIndex])
            valueBIndex += 1
        }
        
        return sortedArray
    }
    
    func mergeSort<T: Comparable>(_ value: [T]) -> [T] {
        // если в нашем массиве больше, чем один элемент, то имеет смысл его сортировать
        guard value.count > 1 else { return value }
        
        // находим средний элемент
        let cutIndex = value.count / 2
        
        // делим массив на левую часть и правую
        let arrayA = mergeSort(Array(value[0..<cutIndex]))
        let arrayB = mergeSort(Array(value[cutIndex..<value.count]))
        
        return merge(valueA: arrayA, valueB: arrayB)
    }
    
    func mergeSortB<T:Comparable>(_ list: [T]) -> [T] {
         // если в нашем массиве больше, чем один элемент, то имеет смысл его сортировать
        if list.count > 1 {
            
            // находим средний элемент
            let mid = list.count / 2
            // делим массив на левую часть и правую
            let leftPart = Array(list[0..<mid])
            let rightPart = Array(list[mid...])
            
            // разделяем массив до тех пор пока это возможно
            var dividedLeft = mergeSort(leftPart)
            var dividedRight = mergeSort(rightPart)
            
            // массив уже "слитых" элементов
            var merged = [T]()
            
            // сравниваем разделённые части и "сливаем" в правильном порядке
            while dividedLeft.count > 0 && dividedRight.count > 0 {
                if dividedLeft.first! < dividedRight.first! {
                    merged.append(dividedLeft.removeFirst())
                } else {
                    merged.append(dividedRight.removeFirst())
                }
            }
            return merged + dividedLeft + dividedRight
            
        } else {
            return list
        }
    }
}
