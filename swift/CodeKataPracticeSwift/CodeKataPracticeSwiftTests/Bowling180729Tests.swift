//
//  Bowling180729Tests.swift
//  CodeKataPracticeSwiftTests
//
//  Created by toto on 2018/07/29.
//  Copyright © 2018 toto. All rights reserved.
//

import XCTest
@testable import CodeKataPracticeSwift

class Bowling180729Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAllStrikes() {
        let b = Bowling180729()
        for _ in 0..<10 {
            b.roll(pins: 10)
        }
        b.roll(pins: 10)
        b.roll(pins: 10)
        XCTAssert(300 == b.score(),"all strikes must be 300")
    }
    
    func testAllSpares() {
        let b = Bowling180729()
        for _ in 0..<10 {
            b.roll(pins: 5)
            b.roll(pins: 5)
        }
        b.roll(pins: 5)
        XCTAssert(150 == b.score(), "all spares with 5 must be 150")
    }
    
    func testAllNines() {
        let b = Bowling180729()
        for _ in 0..<10 {
            b.roll(pins: 9)
            b.roll(pins: 0)
        }
        XCTAssert(90 == b.score(), "all nines")
    }
    
    func testAllSparesWith1stNines() {
        let b = Bowling180729()
        for _ in 0..<10 {
            b.roll(pins: 9)
            b.roll(pins: 1)
        }
        b.roll(pins: 9)
        XCTAssert(190 == b.score(), "all spares with 1st nines")
    }
    
}
