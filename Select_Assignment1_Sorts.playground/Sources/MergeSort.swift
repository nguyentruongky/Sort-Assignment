import Foundation

/**
mergeSortRunTimes is used to count the number of loop time in merge sort algorithm
*/
public var mergeSortRunTimes = 0

/**
 Merge sort algorithm
 - parameter bar: array need to be sorted.
 - returns: the ordered array
 
 */
public func mergeSort(list: [Int]) -> [Int] {
    
    guard list.count > 1 else { return list }
    let centerIndex = list.count / 2
    let leftList = mergeSort(Array(list[0 ..< centerIndex]))
    let rightList = mergeSort(Array(list[centerIndex ..< list.count]))
    return merge(leftList, list2: rightList)
}

func merge(list1: [Int], list2: [Int]) -> [Int] {
    
    var a = list1
    var b = list2
    
    var orderedList = [Int]()
    while a.count > 0 && b.count > 0 {
        mergeSortRunTimes += 1
        if a[0] > b[0] {
            orderedList.append(b[0])
            b.removeAtIndex(0)
        } else {
            orderedList.append(a[0])
            a.removeAtIndex(0)
        }
    }
    
    while a.count > 0 {
        mergeSortRunTimes += 1
        orderedList.append(a[0])
        a.removeAtIndex(0)
    }
    
    while b.count > 0 {
        mergeSortRunTimes += 1
        orderedList.append(b[0])
        b.removeAtIndex(0)
    }
    
    return orderedList
}
