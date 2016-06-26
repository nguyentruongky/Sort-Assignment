import Foundation


/**
selection sort: find the smallest element and move the first of the array.
 - parameter bar: array need to be sorted.
 - returns: the ordered array
 */
public func selectSort(list: [Int]) -> [Int] {
    func swap(inout num1: Int, inout num2: Int) {
        
        let temp = num1
        num1 = num2
        num2 = temp
    }
    
    var newList = list
    guard newList.count > 1 else { return newList }
    for i in 0 ..< newList.count - 1 {
        
        var minIndex = i
        for j in i + 1 ..< newList.count {
            
            if newList[j] < newList[minIndex] {
                minIndex = j
            }
        }
        swap(&newList[minIndex], num2: &newList[i])
    }
    return newList
}

