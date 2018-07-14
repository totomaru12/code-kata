//
//  Bowling180713.swift
//  CodeKataPracticeSwift
//
//  Created by toto on 2018/07/14.
//  Copyright © 2018 toto. All rights reserved.
//

import Foundation

class Bowling180713 {
    
    var rolls = [Int]()
    
    func roll(pins: Int) {
        rolls.append(pins)
    }
    
    func score() -> Int {
        var score = 0
        var rollIndex = 0
        for _ in 0..<10 {
            if isStrike(rollIndex: rollIndex) {
                score += scoreStrike(rollIndex: rollIndex)
                rollIndex += 1
            } else if isSpare(rollIndex: rollIndex) {
                score += scoreSpare(rollIndex: rollIndex)
                rollIndex += 2
            } else {
                score += scoreNormal(rollIndex: rollIndex)
                rollIndex += 2
            }
        }
        return score
    }
    
    func isStrike(rollIndex: Int) -> Bool {
        return 10 == rolls[rollIndex]
    }
    
    func isSpare(rollIndex: Int) -> Bool {
        return 10 == (rolls[rollIndex] + rolls[rollIndex + 1])
    }
    
    func scoreStrike(rollIndex: Int) -> Int {
        return 10 + rolls[rollIndex + 1] + rolls[rollIndex + 2]
    }
    
    func scoreSpare(rollIndex: Int) -> Int {
        return 10 + rolls[rollIndex + 2]
    }
    
    func scoreNormal(rollIndex: Int) -> Int {
        return rolls[rollIndex] + rolls[rollIndex + 1]
    }
}
