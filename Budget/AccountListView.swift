//
//  AccountListView.swift
//  Budget
//
//  Created by Kristian Mitchell on 12/7/25.
//

import SwiftUI
import SwiftData

struct AccountListView: View {
    @Query var accounts: [Account]
    var body: some View {
        List{
            ForEach(accounts) { account in
                NavigationLink(destination: ){
                    HStack{
                        Text("\(account.name)")
                            .font(.title)
                        Spacer()
                        Text("$\(account.balance, specifier: "%.2f")")
                            .foregroundStyle(Color( account.balance > 0 ? .green : .red))
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("Accounts")
    }
}

#Preview {
    AccountListView()
        .modelContainer(previewContainer)
}
