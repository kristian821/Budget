//
//  BudgetApp.swift
//  Budget
//
//  Created by Kristian Mitchell on 12/5/25.
//

import SwiftUI
import SwiftData

@main
struct BudgetApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [
            Account.self,
            Transaction.self
        ])
    }
}
