//
//  File.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import Foundation
import RegexBuilder

extension Optional where Wrapped == String {
    var isEmailValid:Bool{
        guard let email = self , !email.isEmpty,email.wholeMatch(of: emailRegex) != nil else{return false}
        return true
    }
}
