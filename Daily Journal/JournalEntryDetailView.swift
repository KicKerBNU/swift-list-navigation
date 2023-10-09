//
//  JournalEntryDetailView.swift
//  Daily Journal
//
//  Created by Everton Buzzi on 09/10/2023.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack {
                Text(String(repeating: "⭐️", count: detailJournalEntry.rating))
                Text(detailJournalEntry.date, style: .date)
                    .bold()
                Text(detailJournalEntry.description)
                    .padding()
            }
        }
        .navigationTitle(detailJournalEntry.title)
        
    }
}

#Preview {
    NavigationStack {
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "A good day to study", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nulla lorem, fermentum ut dui vitae, dignissim euismod massa. Nam eget lacus sem. Morbi elementum congue sem, quis finibus orci eleifend at. Proin sodales pretium iaculis. Fusce a nunc nec sem consequat laoreet id ac tellus. In ut arcu efficitur, hendrerit felis a, laoreet ante. Vestibulum vitae porta dolor. Nam cursus nisi a orci euismod volutpat. Nulla facilisi. Donec velit lacus, vestibulum eu volutpat ut, porttitor id purus. Nam pellentesque justo lectus, id congue purus rhoncus ac.                                                               Donec cursus fringilla nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sit amet pretium ante, non sodales ex. Curabitur pretium elementum commodo. Pellentesque tristique et purus quis tristique. Morbi eleifend neque magna, semper commodo quam gravida non. Cras dolor velit, vestibulum non mattis mattis, condimentum et diam. Donec sit amet mauris vehicula, luctus lorem sed, iaculis odio. Ut lacus nibh, finibus eu ex vel, accumsan pharetra enim.                                                                Etiam maximus id quam ac auctor. Donec ac mauris enim. Morbi vel dolor vulputate, dictum orci vitae, lacinia mauris. Quisque posuere dictum tempus. Praesent tincidunt viverra ex, sed ullamcorper ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta leo nec venenatis posuere. Fusce ex augue, placerat sit amet rutrum a, posuere et ex. Nam tristique euismod ex nec faucibus. Pellentesque molestie venenatis facilisis. Etiam luctus, elit eu condimentum cursus, metus justo hendrerit risus, non dignissim dui ipsum quis orci. Integer non dui urna. Suspendisse potenti.                                                                Vivamus accumsan lacus libero, sed interdum nulla euismod nec. Nam odio diam, bibendum cursus scelerisque ut, tincidunt at enim. Morbi iaculis id dui eget efficitur. Nulla molestie ipsum id massa malesuada, molestie tincidunt metus rhoncus. Vivamus ornare felis vitae elit dignissim ultrices. Aliquam ultricies tortor sed velit congue porttitor. Praesent viverra elit metus, ac sodales nulla suscipit ac. Etiam ligula eros, eleifend a metus vitae, luctus ullamcorper augue.", rating: 3, date: Date()))
    }
    
}
