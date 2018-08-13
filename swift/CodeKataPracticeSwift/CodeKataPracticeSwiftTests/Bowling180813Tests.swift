//
//  Bowling180813Tests.swift
//  CodeKataPracticeSwiftTests
//
//  Created by toto on 2018/08/13.
//  Copyright © 2018 toto. All rights reserved.
//

import XCTest
@testable import CodeKataPracticeSwift

class Bowling180813Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAllStrikes() {
        let b = Bowling180813()
        for _ in 0..<Bowling180813.NORMAL_FRAME_MAX {
            b.roll(pins: Bowling180813.SCORE_MAX_IN_FRAME)
        }
        b.roll(pins: Bowling180813.SCORE_MAX_IN_FRAME)
        b.roll(pins: Bowling180813.SCORE_MAX_IN_FRAME)
        XCTAssert(300 == b.score(), "all strikes must be 300")
    }
    
    func testAllSparesWith5And5() {
        let b = Bowling180813()
        for _ in 0..<Bowling180813.NORMAL_FRAME_MAX {
            b.roll(pins: 5)
            b.roll(pins: 5)
        }
        b.roll(pins: 5)
        XCTAssert(150 == b.score(), "all spares with 5 must be 150")
    }
    
    func testAllNinesWith8And1() {
        let b = Bowling180813()
        for _ in 0..<Bowling180813.NORMAL_FRAME_MAX {
            b.roll(pins: 8)
            b.roll(pins: 1)
        }
        XCTAssert(90 == b.score(), "all 8 and 1 pairs must be 90")
    }
    
    func testAllSpareWith9And1() {
        let b = Bowling180813()
        for _ in 0..<Bowling180813.NORMAL_FRAME_MAX {
            b.roll(pins: 9)
            b.roll(pins: 1)
        }
        b.roll(pins: 9)
        XCTAssert(190 == b.score(), "all spares with 9 and 1 must be 190")
    }
    
}
