//
//  DateExtension.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/08.
//

import Foundation

extension Date {
    var calendar: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = .current
        calendar.locale   = .current
        return calendar
    }
    var year: Int {
        calendar.component(.year, from: self)
    }
    var month: Int {
        calendar.component(.month, from: self)
    }
    var day: Int {
        calendar.component(.day, from: self)
    }
    var startOfDay: Date {
        return calendar.startOfDay(for: self)
    }
    var startOfMonth: Date {
        let components = calendar.dateComponents([.year, .month], from: self)
        return calendar.date(from: components)!
    }
    var endOfDay: Date {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return calendar.date(byAdding: components, to: startOfDay)!
    }
    var endOfMonth: Date {
        var components = DateComponents()
        components.month = 1
        components.second = -1
        return calendar.date(byAdding: components, to: startOfMonth)!
    }
    var startOfNextMonth: Date {
        var components = DateComponents()
        components.second = 1
        return calendar.date(byAdding: components, to: endOfMonth)!
    }
    var endOfLastMonth: Date {
        var components = DateComponents()
        components.day = -1
        return calendar.date(byAdding: components, to: startOfMonth)!
    }
    var weekdayOfDay: Int {
        return calendar.component(.weekday, from: self)
    }
    func isMonday() -> Bool {
      let components = calendar.dateComponents([.weekday], from: self)
      return components.weekday == 2
    }
    func yearMonth() -> Int {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyyMM"
        return Int(dateFormat.string(from: self)) ?? 0;
    }
    func yearMonthString() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM"
        return dateFormat.string(from: self);
    }
    func dateString() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd"
        return dateFormat.string(from: self);
    }
    func dateTimestring() -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss z"
        return dateFormat.string(from: self)
    }
}
