//
//  ClosedRangeTests.swift
//  TDDBCSwift
//
//  Created by shohei yamamoto on 2020/08/01.
//  Copyright © 2020 tddbc. All rights reserved.
//

import Quick
import Nimble
import MirrorDiffKit
@testable import TDDBCSwift

class MyClosedRangeTests: QuickSpec {
    
    override func spec() {
        describe("整数閉区間オブジェクト"){
            var expectedRange: (Int, Int)!
            beforeEach {
                expectedRange = (3,8)
            }
            it("は下端点3をコンストラクタに与えるとlowerEndPointが3になる") {
                let expected = 3
                let range = MyClosedRange(lowerEndPoint: expected, upperEndPoint: 0)
                let actual = range.lowerEndPoint
                
                expect(actual).to(equal(expected),description: diff(between: expected, and: actual))
            }
            it("は上端点8をコンストラクタに与えるとupperEndPointが8になる") {
                let expected = 8
                let range = MyClosedRange(lowerEndPoint: 0, upperEndPoint: 8)
                let actual = range.upperEndPoint

                expect(actual).to(equal(expected),description: diff(between: expected, and: actual))
            }
        }
    }
}
