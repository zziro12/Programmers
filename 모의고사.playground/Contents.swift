import UIKit
import Foundation

//array를 이용한풀이
func solution(_ answers:[Int]) -> [Int] {
    let person1 : [Int] = [1,2,3,4,5]
    let person2 : [Int] = [2,1,2,3,2,4,2,5]
    let person3 : [Int] = [3,3,1,1,2,2,4,4,5,5]

    var answer1 : Int = 0
    var answer2 : Int = 0
    var answer3 : Int = 0
    
    var result : [Int] = []
    
    for i in 0..<answers.count{
        if(person1[i % person1.count] == answers[i]){ answer1 = answer1 + 1 }
        if(person2[i % person2.count] == answers[i]){ answer2 = answer2 + 1 }
        if(person3[i % person3.count] == answers[i]){ answer3 = answer3 + 1 }
    }
    
    let findMax = max(max(answer1, answer2), answer3)
    
    if findMax == answer1 { result.append(1) }
    if findMax == answer2 { result.append(2) }
    if findMax == answer3 { result.append(3) }
    
    if result.count >= 2 {
        result.sorted(by: <)
    }
    
    return result
}


let ex = [3,3,1,1,2,2,4,4,5,5]
solution(ex)

//dictionary를 이용한풀이
func solution1(_ answers:[Int]) -> [Int] {
    let student = (
        a : [1,2,3,4,5],
        b : [2,1,2,3,2,4,2,5],
        c : [3,3,1,1,2,2,4,4,5,5]
    )
    
    var result: [Int:Int] = [1:0, 2:0, 3:0]
    
    for (i, v) in answers.enumerated(){
        if v == student.a[i % student.a.count] { result[1] = result[1]! + 1 }
        if v == student.b[i % student.b.count] { result[2] = result[2]! + 1 }
        if v == student.c[i % student.c.count] { result[3] = result[3]! + 1 }
    }
    
    return result.sorted{ $0.key < $1.key }.filter{ $0.value == result.values.max() }.map{ $0.key }
}

solution1(ex)
