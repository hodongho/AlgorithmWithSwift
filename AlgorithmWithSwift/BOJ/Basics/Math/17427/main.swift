//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/4/24.
//

let N = Int(readLine()!)!
var sum = 0
for i in 1 ... N {
    sum += (N / i) * i
}

print(sum)
