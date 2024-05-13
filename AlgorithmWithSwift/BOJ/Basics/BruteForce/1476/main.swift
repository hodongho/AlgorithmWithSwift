//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/13/24.
//

import Foundation

// 1 ≤ E ≤ 15, 1 ≤ S ≤ 28, 1 ≤ M ≤ 19

let input = readLine()!.split(separator: " ").map { Int($0)! }

var E = input[0], S = input[1], M = input[2], ourYear = 0

while true {
    if E == S, E == M, S == M {
        ourYear += E
        break
    }
    E -= 1
    S -= 1
    M -= 1
    ourYear += 1

    if E == 0 {
        E = 15
    }
    if S == 0 {
        S = 28
    }
    if M == 0 {
        M = 19
    }
}

print(ourYear)
