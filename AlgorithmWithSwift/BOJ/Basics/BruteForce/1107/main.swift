//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/14/24.
//

//    let strNowChennel = String(nowChennel)
//    for brokenButton in brokens {
//        if strNowChennel.contains(brokenButton) {
//            continue mainLoop
//        }
//    }
//
//    let tmp_count = abs(nowChennel - N) + strNowChennel.count
//    count = min(count, tmp_count)

import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var brokens: [Character] = []
if M > 0 {
    brokens = readLine()!.split(separator: " ").map { Character(String($0)) }
}

var count = abs(N - 100)

mainLoop: for nowChennel in 0 ... 1000000 {
    let strNowChennel = String(nowChennel)
    for brokenButton in brokens {
        if strNowChennel.contains(brokenButton) {
            continue mainLoop
        }
    }

    let tmp_count = abs(nowChennel - N) + strNowChennel.count
    count = min(count, tmp_count)
}

print(count)
