//
//  CalculatorTest.swift
//  TDDBCSwift
//
//  Created by shohei yamamoto on 2020/07/19.
//  Copyright © 2020 tddbc. All rights reserved.
//

import Quick
import Nimble
import MirrorDiffKit



class CalculatorTest: QuickSpec {
    override func spec() {
        describe("計算機") {
            it("1+2の足し算をすると3になる") {
                let expected = 3
                let actual = Calculator.add(1,2)
                
                expect(actual).to(equal(expected), description: diff(between: expected, and: actual))
            }
        }
    }
}
