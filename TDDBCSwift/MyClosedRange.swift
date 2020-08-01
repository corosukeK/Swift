//
//  ClosedRange.swift
//  TDDBCSwift
//
//  Created by shohei yamamoto on 2020/08/01.
//  Copyright © 2020 tddbc. All rights reserved.
//

import Foundation

struct MyClosedRange {
    let lowerEndPoint: Int
    let upperEndPoint: Int
    
    init(lowerEndPoint: Int, upperEndPoint: Int) {
        self.lowerEndPoint = lowerEndPoint
        self.upperEndPoint = upperEndPoint
    }
}

extension MyClosedRange: CustomStringConvertible {
    var description: String {
        return "[\(lowerEndPoint),\(upperEndPoint)]"
    }
}
