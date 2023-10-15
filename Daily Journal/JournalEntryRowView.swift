//
//  JournalEntryRowView.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 09/10/2023.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let rowJournalEntry: JournalEntry

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(rowJournalEntry.title)
                    .lineLimit(1)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            HStack(alignment: .top) {
                Text(rowJournalEntry.date, style: .date)
                Spacer()
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
            }
        }
    }
}

#Preview {
    List {
        JournalEntryRowView(rowJournalEntry: JournalEntry(
            title: "A good day to study",
            text: "Dont lose time with social midia, study and learn new things to be more productive and more able to achieve your objectives in life",
            rating: 3,
            date: Date())
        )
    }
}
