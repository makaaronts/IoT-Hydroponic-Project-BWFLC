//
//  LuckyBambooView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct LuckyBambooView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, Lucky Bamboo is a species of flowering plant in the family Asparagaceae, native to Central Africa. It was named after the German–English gardener Henry Frederick Conrad Sander (1847–1920). The plant is commonly marketed as 'lucky bamboo'.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Dracaena sanderiana")
                        .italic()
                }
            }
            .navigationTitle("Lucky Bamboo")
        }
    }
}

