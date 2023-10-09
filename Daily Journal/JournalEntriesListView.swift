//
//  ContentView.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 08/10/2023.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: JournalEntryDetailView(detailJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
                .navigationTitle("Journal Entries -  \(journalEntries.count)")
            }
        }
        
    }
}

#Preview {
    JournalEntriesListView()
}
