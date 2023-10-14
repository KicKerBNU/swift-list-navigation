//
//  JournalEntry.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 08/10/2023.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Int = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Int, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}


//let journalEntries: [JournalEntry] = [
//    JournalEntry(title: "Good Study", text: "Dont lose time with social midia, study and learn new things to be more productive and more able to achieve your objectives in life", rating: 3, date: Date()),
//    JournalEntry(title: "Headache", text: "woke up with a headache in the entire day", rating: 1, date: Date()),
//    JournalEntry(title: "My App is Live", text: "My app is live in the App Store", rating: 4, date: Date()),
//]
