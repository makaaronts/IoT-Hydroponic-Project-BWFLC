//
//  CreditsView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Developer of This App")) {
                    Text("Mr Vincent Fung & Aaron Mak")
                }
                Section(header: Text("Supervisor of This App")) {
                    Text("Mr To & Ms Cheung")
                }
                Section(header: Text("Technical Support")) {
                    Text("Mr Vincent Fung")
                }
                Section(header: Text("App Icon Designer")) {
                    Text("Anonymous")
                }
            }
            .navigationTitle("Credits")
        }
        .scrollDisabled(true)
        .scrollContentBackground(.hidden)
    }
}

