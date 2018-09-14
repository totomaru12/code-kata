//
//  Bowling180914Tests.swift
//  CodeKataPracticeSwiftTests
//
//  Created by toto on 2018/09/14.
//  Copyright © 2018 toto. All rights reserved.
//

import XCTest
@testable import CodeKataPracticeSwift

class Bolwing180914Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAllStrikes() {
        let b = Bowling180914()
        for _ in 0..<Bowling180914.NORMAL_FRAME_MAX {
            b.roll(pins: Bowling180914.SCORE_MAX_IN_FRAME)
        }
        b.roll(pins: Bowling180914.SCORE_MAX_IN_FRAME)
        b.roll(pins: Bowling180914.SCORE_MAX_IN_FRAME)
        XCTAssert(300 == b.score(), "all strikes should be 300")
    }
    
    func testAllSparesWith9And1() {
        let b = Bowling180914()
        for _ in 0..<Bowling180914.NORMAL_FRAME_MAX {
            b.roll(pins: 9)
            b.roll(pins: 1)
        }
        b.roll(pins: 9)
        XCTAssert(190 == b.score(), "all spares with 9 and 1 should be 190")
    }
    
    func testAllFramesWith8And1() {
        let b = Bowling180914()
        for _ in 0..<Bowling180914.NORMAL_FRAME_MAX {
            b.roll(pins: 8)
            b.roll(pins: 1)
        }
        XCTAssert(90 == b.score(), "all frames with 9 and 1 should be 90")
    }
    
    func testAllFramesWith9And0() {
        let b = Bowling180914()
        for _ in 0..<Bowling180914.NORMAL_FRAME_MAX {
            b.roll(pins: 9)
            b.roll(pins: 0)
        }
        XCTAssert(90 == b.score(), "all frames with 9 and 0 should be 90")
    }
    
    func testAllFramesWith0And9() {
        let b = Bowling180914()
        for _ in 0..<Bowling180914.NORMAL_FRAME_MAX {
            b.roll(pins: 0)
            b.roll(pins: 9)
        }
        XCTAssert(90 == b.score(), "all frames with 0 and 9 should be 90")
    }
}
