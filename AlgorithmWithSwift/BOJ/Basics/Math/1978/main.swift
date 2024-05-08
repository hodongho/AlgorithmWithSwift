//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/8/24.
//
import Foundation

func isPrime(_ num: Int) -> Bool {
    if num == 1 {
        return false
    } else if num == 2 {
        return true
    } else if num % 2 == 0 {
        return false
    }

    let sqrtNum = Int(sqrt(Double(num)))

    if sqrtNum > 2 {
        for index in 3 ... sqrtNum {
            if num % index == 0 {
                return false
            }
        }
    }
    return true
}

_ = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0

for num in array {
    if isPrime(num) == true {
        count += 1
    }
}

print(count)
