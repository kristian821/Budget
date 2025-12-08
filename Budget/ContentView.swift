//
//  ContentView.swift
//  Budget
//
//  Created by Kristian Mitchell on 12/5/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var accounts: [Account]
    @State private var showAddNewAccount: Bool = false
//    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                showAddNewAccount.toggle()
            }) {
                Label("Add Account", systemImage: "plus")
            }
            Spacer()
        }
        .sheet(isPresented: $showAddNewAccount) {
            AddAccountView()
                
        }
        
    }
}

#Preview {
    ContentView()
        .modelContainer(previewContainer)
}
