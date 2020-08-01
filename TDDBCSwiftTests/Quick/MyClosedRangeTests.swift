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
        describe("閉区間の"){
            it("下端点3をコンストラクタに与えるとlowerEndPointが3になる") {
                let expected = 3
                let range = ClosedRange(lowerEndPoint: expected)
                let actual = range.lowerEndPoint
                expect(actual).to(equal(expected),description: diff(between: expected, and: actual))
            }
        }
    }
}
