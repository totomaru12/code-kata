//
//  SwiftGrammarPractice.swift
//  CodeKataPracticeSwift
//
//  Created by toto on 2018/07/14.
//  Copyright © 2018 toto. All rights reserved.
//

// This source code is based on the under page.
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html

import Foundation

class SwiftGrammarPractice {
    func practice() {
        
        // hello world
        print("Hello, world!")
        
        // variable
        var variable = 12
        variable = 34
        print(variable) // 34
        
        // constant
        let constant = 56
        // constant = 1111 // this is compile error
        print(constant) // 56
        
        // explicit type
        var explictValue: Double = 70
        print(explictValue) // 70.0
    }
}
