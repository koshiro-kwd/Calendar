//
//  EventDate.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/08.
//

import Foundation

struct Event: Identifiable {
    var id: Int
    var name: String
    var detail: String
    var startDate: Date
    var endDate: Date
    var isAllDay: Bool
}
