//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/11/24.
//

var dwarfs: [Int] = []

for _ in 1 ... 9 {
    dwarfs.append(Int(readLine()!)!)
}

dwarfs.sort()

var total = dwarfs.reduce(0, +)

loop: for index1 in 0 ... 7 {
    for index2 in index1 + 1 ... 8 {
        let dwarf1 = dwarfs[index1]
        let dwarf2 = dwarfs[index2]

        if total - dwarf1 - dwarf2 == 100 {
            for dwarf in dwarfs {
                if dwarf != dwarf1, dwarf != dwarf2 {
                    print(dwarf)
                }
            }
            break loop
        }
    }
}
