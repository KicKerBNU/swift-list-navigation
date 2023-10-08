//
//  ContentView.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 08/10/2023.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    let journalEntries: [JournalEntry] = [JournalEntry(title: "A good day to study", description: "Dont lose time with social midia, study and learn new things to be more productive and more able to achieve your objectives in life", rating: 3)]
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: Text(String(listedJournalEntry.description)).padding()){
                    Text(listedJournalEntry.title)
                        
                }
            }
            .navigationTitle("Journal Entries -  \(journalEntries.count)")
        }
        
    }
}

#Preview {
    JournalEntriesListView()
}
