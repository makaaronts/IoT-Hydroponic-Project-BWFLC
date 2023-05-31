//
//  PothosView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct PothosView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, Pothos is a genus of flowering plants in the family Araceae (tribe Potheae). It is native to China, the Indian Subcontinent, Australia, New Guinea, Southeast Asia, and various islands of the Pacific and Indian Oceans.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Epipremnum aureum")
                        .italic()
                }
            }
            .navigationTitle("Pothos")
        }
    }
}

