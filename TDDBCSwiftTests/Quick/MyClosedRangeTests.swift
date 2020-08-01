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
            context("でコンストラクタに下端点3、上端点8を与えると"){
                let expected_lower = 3
                let expected_upper = 8
                let range: MyClosedRange = MyClosedRange(lowerEndPoint: expected_lower, upperEndPoint: expected_upper)


                it("lowerEndPointが3になる") {
                    let actual = range.lowerEndPoint

                    expect(actual).to(equal(expected_lower),description: diff(between: expected_lower, and: actual))
                }
                it("upperEndPointが8になる") {
                    let actual = range.upperEndPoint

                    expect(actual).to(equal(expected_upper),description: diff(between: expected_upper, and: actual))
                }
            }

        }

    }
}
