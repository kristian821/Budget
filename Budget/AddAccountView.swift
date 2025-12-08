//
//  AddAccountView.swift
//  Budget
//
//  Created by Kristian Mitchell on 12/5/25.
//
////  Look into Swift Data
import SwiftUI
import SwiftData

struct AddAccountView: View {
    @Query private var accounts: [Account]
    @State private var accountName: String = ""
    @State private var accountBalance: Double = 0.00
    @State private var balanceFormatter: NumberFormatter = {
        var bF = NumberFormatter()
        bF.numberStyle = .currencyAccounting
        return bF
    }()
    
    @Environment(\.modelContext) private var modelContext
    
    func createAccount() {
        let newAccount = Account(name: accountName, balance: accountBalance)
        modelContext.insert(newAccount)
    }
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("New Account Name").font(.title2)) {
                    TextField(
                        "Account Name",
                        text: $accountName
                    )
                }
                Section(header: Text("Current Balance").font(.title2)) {
                    TextField(
                        "$\(accountBalance)",
                        value: $accountBalance,
                        formatter: balanceFormatter
                    )
                }
            }
            Button(action:
                    createAccount) {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "checkmark")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }

                    Text("Add Account")
                        .font(.title)
                }
                .padding()
            }
                    .tint(Color(.blue))
                    .ignoresSafeArea(.all)
                    .buttonStyle(.borderedProminent)
                    .padding()
        }
    }
        
}

#Preview {
    AddAccountView()
}
