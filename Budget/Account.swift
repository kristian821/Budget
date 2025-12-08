//
//  Account.swift
//  Budget
//
//  Created by Kristian Mitchell on 12/5/25.
//

import Foundation
import SwiftData

@Model
class Account {
    let id = UUID()
    var name: String
    var balance: Double
    var transactions: [Transaction]
    
    init(name: String, balance: Double) {
        self.name = name
        self.balance = balance
        self.transactions = []
    }
}
