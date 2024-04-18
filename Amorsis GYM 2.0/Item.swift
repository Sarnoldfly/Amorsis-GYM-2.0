//
//  Item.swift
//  Amorsis GYM 2.0
//
//  Created by Mac on 27/3/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
