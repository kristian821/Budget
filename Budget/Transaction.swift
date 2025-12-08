//
//  Transaction.swift
//  Budget
//
//  Created by Kristian Mitchell on 12/5/25.
//

import Foundation
import Combine
import SwiftData

@Model
class Transaction {
    let id = UUID()
    var name: String
    var amount: Double
    enum entry {
        case credit
        case debit
    }
    
    var date: Date
    var location: String?
    var recurring: Bool
    
    init(name: String, amount: Double, date: Date, location: String, recurring: Bool) {
        self.name = name
        self.amount = amount
        self.date = date
        self.location = location
        self.recurring = recurring
    }
    
    init(name: String, amount: Double) {
        self.name = name
        self.amount = amount
        self.date = Date()
        self.recurring = false
    }
}
