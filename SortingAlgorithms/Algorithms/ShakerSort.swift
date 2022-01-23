//
//  ShakerSort.swift
//  SortingAlgorithms
//
//  Created by Aleksandr Aniskin on 26.12.2021.
//

/*
 Time complexity:
 Worst time: O(n²)
 The best time: O(n log²(n))
 */

import Foundation

struct ShakerSort{
    func shakerSort<T: Comparable>(_ value: [T]) -> [T] {
        var sorted = value

        //левая и правая границы сортируемой области массива
        var leftIndex = 0
        var rightIndex = sorted.count-1
        var flag : Bool //флаг наличия перемещений

        //пока левая и правая границы цикла не замкнуться
        while leftIndex < rightIndex {
            flag = false
            
            //двигаемся слева направо
            for i in leftIndex..<rightIndex {
                //если следующий элемент меньше текущего
                if sorted[i] > sorted[i+1] {
                    sorted.swapAt(i+1, i) //меняем их местами
                    flag = true //перемещения есть
                }
            }
            rightIndex -= 1 //сдвигаем правую границу на предыдущий элемент
            
            if flag == false {break} //проверяем есть ли премещения или массив уже отсротирован
            
            //двигаемся справа налево
            for i in (leftIndex..<rightIndex).reversed() {
                //если предыдущий элемент больше текущего
                if sorted[i] > sorted[i+1] {
                    sorted.swapAt(i, i+1) //меняем их местами
                    flag = true //перемещения есть
                }
            }
            leftIndex += 1 //сдвигаем левую границу на следующий элемент
            
            if flag == false {break} //проверяем есть ли премещения или массив уже отсротирован
        }
        return sorted
    }
}
