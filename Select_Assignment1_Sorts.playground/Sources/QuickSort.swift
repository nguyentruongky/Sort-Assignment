import Foundation

/**
 quickSortRunTimes is used to count the number of loop time in merge sort algorithm
*/
public var quickSortRunTimes = 0

/**
 Quick sort algorithm with the pivot is the first element of the array.
 - parameter bar: array need to be sorted.
 - returns: the ordered array
 
*/
public func quickSort(list: [Int]) -> [Int] {
   
    
    guard list.count > 1 else { return list }
    
    var leftResults = [Int]()
    let pivot = list[0]
    var rightResults = [Int]()
    
    for i in 1 ..< list.count {
        quickSortRunTimes += 1
        let currentElement = list[i]
        currentElement < pivot ?
            leftResults.append(currentElement) :
            rightResults.append(currentElement)
    }
    
    if leftResults.count > 1 {
        leftResults = quickSort(leftResults)
    }
    
    if rightResults.count > 1 {
        rightResults = quickSort(rightResults)
    }
    
    var results = [Int]()
    results.appendContentsOf(leftResults)
    results.append(pivot)
    results.appendContentsOf(rightResults)
    
    return results
}

