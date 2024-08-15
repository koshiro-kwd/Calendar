//
//  EventRow.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/14.
//

import SwiftUI

struct EventRow: View {
    var event: Event
    
    var body: some View {
        Text(event.name)
    }
}

#Preview {
    EventRow(event: events[0])
}
