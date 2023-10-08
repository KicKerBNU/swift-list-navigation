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
    
    init(title: String, description: String, rating: Int) {
        self.title = title
        self.description = description
        self.rating = rating
    }
}
