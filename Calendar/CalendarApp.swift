//
//  CalendarApp.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/08.
//

import SwiftUI

@main
struct CalendarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CalendarDate())
        }
    }
}
