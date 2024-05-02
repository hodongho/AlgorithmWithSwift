//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/1/24.
//

import Foundation

let input = readLine()!

let splitInput = input.split(separator: " ")

let A = Int(splitInput[0])!
let B = Int(splitInput[1])!
let C = Int(splitInput[2])!

print((A + B) % C)
print(((A % C) + (B % C)) % C)
print((A * B) % C)
print(((A % C) * (B % C)) % C)
