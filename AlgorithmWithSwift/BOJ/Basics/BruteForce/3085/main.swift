//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 현동호 on 5/12/24.
//

import Foundation

var board: [[String]] = []

let N = Int(readLine()!)!

for _ in 0 ..< N {
    board.append(readLine()!.map { String($0) })
}

print(board)

var max = 0

for heightIndex in 0 ..< N {
    for widthIndex in 0 ..< N - 1 {
        if board[heightIndex][widthIndex] != board[heightIndex][widthIndex + 1] {
            let tmpCandy = board[heightIndex][widthIndex]
            board[heightIndex][widthIndex] = board[heightIndex][widthIndex + 1]
            board[heightIndex][widthIndex + 1] = tmpCandy
            let width = width()
            let height = height()
            if width > max {
                max = width
            }
            if height > max {
                max = height
            }
            board[heightIndex][widthIndex + 1] = board[heightIndex][widthIndex]
            board[heightIndex][widthIndex] = tmpCandy
        }

        if board[widthIndex][heightIndex] != board[widthIndex + 1][heightIndex] {
            let tmpCandy = board[widthIndex][heightIndex]
            board[widthIndex][heightIndex] = board[widthIndex + 1][heightIndex]
            board[widthIndex + 1][heightIndex] = tmpCandy
            let width = width()
            let height = height()
            if width > max {
                max = width
            }
            if height > max {
                max = height
            }
            board[widthIndex + 1][heightIndex] = board[widthIndex][heightIndex]
            board[widthIndex][heightIndex] = tmpCandy
        }
    }
}

print(max)

func width() -> Int {
    var widthCount = 0
    for heightIndex in 0 ..< N {
        var tmpCount = 1
        for widthIndex in 0 ..< N - 1 {
            if board[heightIndex][widthIndex] == board[heightIndex][widthIndex + 1] {
                tmpCount += 1
            } else {
                if tmpCount > widthCount {
                    widthCount = tmpCount
                }
                tmpCount = 1
            }
        }
        if tmpCount > widthCount {
            widthCount = tmpCount
        }
    }
    return widthCount
}

func height() -> Int {
    var heightCount = 0
    for widthIndex in 0 ..< N {
        var tmpCount = 1
        for heightIndex in 0 ..< N - 1 {
            if board[heightIndex][widthIndex] == board[heightIndex + 1][widthIndex] {
                tmpCount += 1
            } else {
                if tmpCount > heightCount {
                    heightCount = tmpCount
                }
                tmpCount = 1
            }
        }
        if tmpCount > heightCount {
            heightCount = tmpCount
        }
    }
    return heightCount
}
