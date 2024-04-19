//
//  Regex.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import Foundation
import RegexBuilder

let emailRegex = Regex {
    OneOrMore {
        CharacterClass(
            .anyOf("._%+-"),
            ("A"..."Z"),
            ("a"..."z"),
            ("0"..."9")
        )
    }
    "@"
    OneOrMore {
        CharacterClass(
            .anyOf(".-"),
            ("A"..."Z"),
            ("a"..."z"),
            ("0"..."9")
        )
    }
    "."
    Repeat(2...) {
        CharacterClass(
            ("A"..."Z"),
            ("a"..."z")
        )
    }
}

