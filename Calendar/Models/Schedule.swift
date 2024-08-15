//
//  Schedue.swift
//  Calendar
//
//  Created by koshiro kawada on 2024/08/14.
//

import Foundation

struct Schedule: Identifiable {
    
    var id: Int
    var name: String
    var detail: String
    var events: [Event]
}
