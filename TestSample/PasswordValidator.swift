//
//  PasswordValidator.swift
//  TestSample
//
//  Created by Yusuke Hasegawa on 2021/07/19.
//

import Foundation

func validate(password: String) -> Bool {
    if password.count <= 7 { return false }
    
    return true
}
