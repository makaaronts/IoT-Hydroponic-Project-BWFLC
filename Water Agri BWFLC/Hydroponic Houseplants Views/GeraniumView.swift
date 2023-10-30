//
//  GeraniumView.swift
//  Water Agri BWFLC
//
//  Created by STEM Macbook Air 08 on 30/10/2023.
//

import SwiftUI

struct GeraniumView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, the flowers of Geranium are typically five-petaled and white to purple. The leaves are palmate divided into narrow, pointed segments. They are found throughout the temperate regions of the world and the mountains of the tropics, with the greatest diversity in the eastern part of the Mediterranean region.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Geranium viscosissimum")
                        .italic()
                }
            }
        }
    }
}
