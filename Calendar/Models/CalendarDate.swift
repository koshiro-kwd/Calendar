//
//  CalendarDate.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/08.
//

import Foundation

class CalendarDate: ObservableObject {
    @Published var showingDate = Date()
    @Published var selectedDate = Date()
    @Published var lastSelectedYearMonth = Date().yearMonth()
    @Published var uuid: UUID = UUID()
}
