//
//  EnglishIvyView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct EnglishIvyView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, English Ivy is a species of flowering plant of the ivy genus in the family Araliaceae, native to most of Europe and western Asia. A rampant, clinging evergreen vine, it is a familiar sight in gardens, waste spaces, and wild areas, where it grows on walls, fences, tree trunks, etc. across its native and introduced habitats. As a result of its hardy nature, and its tendency to grow readily without human assistance.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Hedera helix")
                        .italic()
                }
            }
            .navigationTitle("English Ivy")
        }
    }
}

