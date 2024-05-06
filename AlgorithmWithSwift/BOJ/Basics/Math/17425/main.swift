//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/6/24.
//

var dp = Array(repeating: 1, count: 1000001)

dp[0] = 0

for main_index in 2 ... 1000000 {
    for sub_index in stride(from: main_index, through: 1000000, by: main_index) {
        dp[sub_index] += main_index
    }
    dp[main_index] += dp[main_index - 1]
}

let T = Int(readLine()!)!

for _ in 1 ... T {
    let N = Int(readLine()!)!
    print(dp[N])
}
