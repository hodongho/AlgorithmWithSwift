//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/10/24.
//

import Foundation

var primes = Array(repeating: true, count: 1000001)
primes[1] = false

for index in 2 ..< 1000 {
    var tmp_index = 2
    while index * tmp_index < 1000001 {
        primes[index * tmp_index] = false
        tmp_index += 1
    }
}

while true {
    let num = Int(readLine()!)!

    if num == 0 {
        break
    }

    for index in stride(from: 3, through: num / 2, by: 2) where primes[num - index] == true && primes[index] == true {
        print("\(num) = \(index) + \(num - index)")
        break
    }
}
