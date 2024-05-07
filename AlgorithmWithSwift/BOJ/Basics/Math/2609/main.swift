//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/7/24.
//

import Foundation

func GCD(_ a: Int, _ b: Int) -> Int {
//    return b == 0 ? a : GCD(b, a % b)
    if b == 0 {
        return a
    } else {
        return GCD(b, a % b)
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N1 = input.max()!, N2 = input.min()!

let gcd = GCD(N1, N2)

print(gcd)
print(N1 * N2 / gcd)
