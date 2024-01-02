//
//  Cost.swift
//  OkaneCome
//
//  Created by ikue uda on 2024/01/02.
//

import Foundation
import SwiftData

@Model
final class Cost {
    var category: Int
    var yen: Int
    var memo: String
    var date: Date
    
    init(memo: String, yen: Int) {
        self.category = 0
        self.yen = yen
        self.memo = memo
        self.date = Date()
    }
}
