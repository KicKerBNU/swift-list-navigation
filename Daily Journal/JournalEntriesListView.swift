//
//  ContentView.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 08/10/2023.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var journalEntries: [JournalEntry]
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: JournalEntryDetailView(detailJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add new journal entry", systemImage: "plus")
                    }
                }
            }
        }
        
    }
    private func addItem() {
        withAnimation {
            //Create the object
            let newItem = JournalEntry(title: "new item", text: "This is a text", rating: 3, date: Date(timeIntervalSinceNow: 24))
            
            //Saving into SwiftData
            modelContext.insert(newItem)
        }
    }
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(journalEntries[index])
            }
        }
    }

}


#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
