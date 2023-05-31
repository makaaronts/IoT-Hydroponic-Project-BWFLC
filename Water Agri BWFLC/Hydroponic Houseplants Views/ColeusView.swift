//
//  ColeusView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct ColeusView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, coleus is a genus of annual or perennial herbs or shrubs, sometimes succulent, sometimes with a fleshy or tuberous rootstock, found in the Afro-Eurasia tropics and subtropics.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Plectranthus scutellarioides")
                        .italic()
                }
            }
            .navigationTitle("Coleus")
        }
    }
}

