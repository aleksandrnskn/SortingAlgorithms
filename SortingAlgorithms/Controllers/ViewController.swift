//
//  ViewController.swift
//  SortingAlgorithms
//
//  Created by Aleksandr Aniskin on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {

    var arrayForSort: [Int] = []
    var sortedArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sortedArray = BubbleSort().bubbleSort(arrayForSort)
        print("Bubble Sort:")
        print(sortedArray)
        
        sortedArray = InsertionSort().insertionSort(arrayForSort)
        print("Insertion Sort:")
        print(sortedArray)
        
        sortedArray = SelectionSort().selectionSort(arrayForSort)
        print("Selection Sort:")
        print(sortedArray)
        
        sortedArray = MergeSort().mergeSort(arrayForSort)
        print("Merge Sort:")
        print(sortedArray)
        
        sortedArray = ShakerSort().shakerSort(arrayForSort)
        print("Shaker Sort:")
        print(sortedArray)
        
        sortedArray = QuickSort().quickSort(arrayForSort)
        print("Quick Sort:")
        print(sortedArray)
    }
}

