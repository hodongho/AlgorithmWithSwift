//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/3/24.
//

import Foundation

var N = Int(readLine()!)!

let AtoArray = readLine()!.split(separator: " ").map { Int($0)! }

print(AtoArray.min()! * AtoArray.max()!)
