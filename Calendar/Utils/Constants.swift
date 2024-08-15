//
//  Constants.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/08.
//

import Foundation
import SwiftUI

struct Constants {
    static let weekdays = DateFormatter().veryShortStandaloneMonthSymbols!
    static let bgColorCurrentMonth = Color.white
    static let bgColorDifferentMonth = Color.gray.opacity(0.1)
    static let bgColorCellHighlight = Color.yellow.opacity(0.5)
}

