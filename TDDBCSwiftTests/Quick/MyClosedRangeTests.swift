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
        describe("整数閉区間"){
            var range: MyClosedRange!
            context("に下端点3、上端点8を与えると"){
                let expected_lower = 3
                let expected_upper = 8
                beforeEach {
                    range = MyClosedRange(lowerEndPoint: expected_lower, upperEndPoint: expected_upper)
                }
                it("lowerEndPointが3になる") {
                    let expected = 3
                    let actual = range.lowerEndPoint
                    expect(actual).to(equal(expected),description: diff(between: expected, and: actual))
                }
                it("upperEndPointが8になる") {
                    let expected = 8
                    let actual = range.upperEndPoint
                    expect(actual).to(equal(expected),description: diff(between: expected, and: actual))
                }
                it("descriptionが[3,8]になる") {
                    let expected = "[3,8]"
                    let actual = range.description
                    expect(actual).to(equal(expected), description: diff(between: expected, and: actual))
                }
                it("別のRange[3,8]と等価になる") {
                    let another = MyClosedRange(lowerEndPoint: expected_lower, upperEndPoint: expected_upper)
                    expect(range == another).to(equal(true))
                }
                it("別のRange[3,7]と等価にならない") {
                    let another = MyClosedRange(lowerEndPoint: expected_lower, upperEndPoint: 7)
                    expect(range != another).to(equal(true))
                }
                it("別のRange[2,8]と等価にならない") {
                    let another = MyClosedRange(lowerEndPoint: 2, upperEndPoint: expected_upper)
                    expect(range != another).to(equal(true))
                }
            }
            context("に下端点8、上端点3を与えると") {
                it("実行時エラーになる") {
                    expect{
                        _ = MyClosedRange(lowerEndPoint: 8, upperEndPoint: 3)
                    }.to(throwAssertion())
                }
            }
            context("に下端点3、上端点3を与えると"){
                it("実行時エラーにならない") {
                    expect{
                        _ = MyClosedRange(lowerEndPoint: 3, upperEndPoint: 3)
                    }.notTo(throwAssertion())
                }
            }
        }
    }
}
