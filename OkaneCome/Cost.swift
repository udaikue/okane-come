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
    var yearMonth: String
    var day: String
    
    init(category: Int, yen: Int, memo: String, yearMonth: String, day: String) {
        self.category = category
        self.yen = yen
        self.memo = memo
        self.yearMonth = yearMonth
        self.day = day
    }
}
