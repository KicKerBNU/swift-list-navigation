//
//  JournalEntry.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 08/10/2023.
//

import Foundation

class JournalEntry: Identifiable {
    var title: String = ""
    var description: String = ""
    var rating: Int = 1
    var date: Date = Date()
    
    init(title: String, description: String, rating: Int, date: Date) {
        self.title = title
        self.description = description
        self.rating = rating
        self.date = date
    }
}

let journalEntries: [JournalEntry] = [
    JournalEntry(title: "Good Study", description: "Dont lose time with social midia, study and learn new things to be more productive and more able to achieve your objectives in life", rating: 3, date: Date()),
    JournalEntry(title: "Headache", description: "woke up with a headache in the entire day", rating: 1, date: Date()),
    JournalEntry(title: "My App is Live", description: "My app is live in the App Store", rating: 4, date: Date()),
]
