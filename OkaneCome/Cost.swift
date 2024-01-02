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
    var timestamp: Date
    var category: Int
    var yen: Int
    var memo: String
    var date: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
        self.category = 0
        self.yen = 1000
        self.memo = "メモメモ"
        self.date = Date()
    }
}
