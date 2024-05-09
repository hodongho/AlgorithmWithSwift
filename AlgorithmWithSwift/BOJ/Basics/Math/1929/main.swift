//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/9/24.
//

import Foundation

var primeArray = Array(repeating: true, count: 1000001)
primeArray[1] = false
for num in 2 ... 1000 {
    var tmp_num = 2
    while num * tmp_num < 1000001 {
        primeArray[num * tmp_num] = false
        tmp_num += 1
    }
}

for (index, num) in primeArray.enumerated() {}

let range = readLine()!.split(separator: " ").map { Int($0)! }

for num in range[0] ... range[1] {
    if primeArray[num] == true {
        print(num)
    }
}
