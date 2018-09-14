//
//  Bowling180914.swift
//  CodeKataPracticeSwift
//
//  Created by toto on 2018/09/14.
//  Copyright © 2018 toto. All rights reserved.
//

import Foundation

class Bowling180914 {
    
    static let NORMAL_FRAME_MAX = 10
    static let SCORE_MAX_IN_FRAME = 10
    
    var rolls = [Int]()
    
    func roll(pins: Int) {
        rolls.append(pins)
    }
    
    func score() -> Int {
        var score = 0
        var rollIndex = 0
        for _ in 0..<Bowling180914.NORMAL_FRAME_MAX {
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
        return Bowling180914.SCORE_MAX_IN_FRAME == rolls[rollIndex]
    }
    
    func isSpare(rollIndex: Int) -> Bool {
        return Bowling180914.SCORE_MAX_IN_FRAME == rolls[rollIndex] + rolls[rollIndex + 1]
    }
    
    func scoreStrike(rollIndex: Int) -> Int {
        return Bowling180914.SCORE_MAX_IN_FRAME + rolls[rollIndex + 1] + rolls[rollIndex + 2]
    }
    
    func scoreSpare(rollIndex: Int) -> Int {
        return Bowling180914.SCORE_MAX_IN_FRAME + rolls[rollIndex + 2]
    }
    
    func scoreNormal(rollIndex: Int) -> Int {
        return rolls[rollIndex] + rolls[rollIndex + 1]
    }
    
}
