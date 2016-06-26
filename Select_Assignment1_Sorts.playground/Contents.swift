//: Playground - noun: a place where people can play

import UIKit
func test(actual: [Int], _ expected: [Int]) {
    actual == expected ? print("✅") : print("Failure! Got: \(actual), Expected: \(expected).")
}


func testEmptyList() {
    let list = [Int]()
    print("Empty case quick sort")
    test(quickSort(list), [])
    print("Empty case merge sort")
    test(mergeSort(list), [])
    print("Empty case selection sort")
    test(selectSort(list), [])

}

func testOrderedList() {
    let list = [1,2,3,4,5,6,7]
    print("Ordered list quick sort")
    test(quickSort(list), list)
    print("Ordered list merge sort")
    test(mergeSort(list), list)
    print("Ordered list selecion sort")
    test(selectSort(list), list)
}

func testUnorderedList() {
    let list = [1,4,1,5,5,7,2,3,0,1]
    let result = [0, 1, 1, 1, 2, 3, 4, 5, 5, 7]
    print("Unordered list quick sort")
    test(quickSort(list), result)
    print("Unordered list merge sort")
    test(mergeSort(list), result)
    print("Unordered list selecion sort")
    test(selectSort(list), result)
}

func testQuickSortBetterThanMergeSort() {
    
    let list = [4,1,2,5,6,9]
    quickSort(list)
    mergeSort(list)
    print("Quick sort run times: \(quickSortRunTimes)")
    print("Merge sort run times: \(mergeSortRunTimes)")
}

func testMergeSortBetterThanQuickSort() {
    
    let list = generateList(10)
    print(list)
    quickSort(list)
    mergeSort(list)
    print("Quick sort run times: \(quickSortRunTimes)")
    print("Merge sort run times: \(mergeSortRunTimes)")
}


func generateList(n:Int ) -> [Int] {
    var result:[Int] = []
    for _ in 0..<n {
        result.append(Int(arc4random_uniform(20) + 1))
    }
    return result
}


print("==============Edge cases==============")
testEmptyList()
testOrderedList()
testUnorderedList()

print("==============Quick sort better than merge sort==============")
testQuickSortBetterThanMergeSort()

print("==============Merge sort better than quick sort==============")
testMergeSortBetterThanQuickSort()
