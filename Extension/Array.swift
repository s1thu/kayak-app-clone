//
//  Array.swift
//  kayak-app-clone
//
//  Created by Sithu Win on 18/04/2024.
//

import Foundation
import UIKit

extension Array where Element == UIButton? {
    func addTarget(action: Selector){
        self.compactMap{$0}
            .forEach{$0.addTarget(self, action: action, for: .touchUpInside)}
    }
}
