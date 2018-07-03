//
//  Bowling180703Tests.swift
//  CodeKataPracticeSwiftTests
//
//  Created by toto on 2018/07/03.
//  Copyright © 2018 toto. All rights reserved.
//

import XCTest
@testable import CodeKataPracticeSwift

class Bowling180703Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAllStrikes() {
        let b = Bowling180703()
        for _ in 0..<12 {
            b.roll(pins: 10)
        }
        XCTAssert(300 == b.score(), "all strikes score must be 300")
    }

    func testAllSpare() {
        let b = Bowling180703()
        for _ in 0..<21 {
            b.roll(pins: 5)
        }
        XCTAssert(150 == b.score(), "all five spare must be 150")
    }

    func testAllNine() {
        let b = Bowling180703()
        for _ in 0..<10 {
            b.roll(pins: 9)
            b.roll(pins: 0)
        }
        XCTAssert(90 == b.score(), "all nine and 0 frame must be 90")
    }

    func testAllSpareWith1stNine() {
        let b = Bowling180703()
        for _ in 0..<10 {
            b.roll(pins: 9)
            b.roll(pins: 1)
        }
        b.roll(pins: 9)
        XCTAssert(190 == b.score(), "all spare with 1st pins 9 must be 190")
    }
}
