//
//  PasswordValidator.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import Foundation

func validate(password: String) -> Bool {
    if password.count < 8 { return false }
    let numericString = password.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    return numericString.count >= 2
}
