//
//  Math.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import Foundation

enum OperationError: Error {
    case divisionByZero
}

func divide(_ x: Int, y: Int) throws -> Int {
    if y == 0 { throw OperationError.divisionByZero }
    return x / y
}
