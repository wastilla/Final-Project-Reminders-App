//
//  Reminder_Struct.swift
//  FinalProject-Reminders-Recreation
//
//  Created by will astilla on 4/15/22.
//

import Foundation

struct Reminder: Identifiable, Hashable {
    var name: String
    let id = UUID()
    var complete: Bool = false
}
