import UIKit
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for i in commands {
        var newarray = array[(i[0]-1)...(i[1]-1)]
        newarray.sort{$0 < $1}
        let sortedArray = Array(newarray)
        result.append(sortedArray[(i[2]-1)])
    }
    
    return result
}

func solution1(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for command in commands {
        let i = command[0] - 1
        let j = command[1] - 1
        let k = command[2] - 1
        var newarray = array[i...j]
        newarray.sort{$0 < $1}
        let sortedArray = Array(newarray)
        result.append(sortedArray[k])
    }
    
    return result
}

solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])

//swift
