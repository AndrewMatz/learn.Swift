//
//  Item.swift
//  learn.Swift
//
//  Created by Andrew Matz on 6/1/25.
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
