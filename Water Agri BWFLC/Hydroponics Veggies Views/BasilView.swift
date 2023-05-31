//
//  BasilView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct BasilView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, Basil also called great basil, is a culinary herb of the family Lamiaceae (mints). It is a tender plant, and is used in cuisines worldwide.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Ocimum basilicum")
                        .italic()
                }
                Section(header: Text("Nutrition Information - Per 100g")) {
                    Group {
                        Text("Energy: 22 kcal")
                        Text("Fat: 0.64 g")
                        Text("Protein: 3.15 g")
                        Text("Sodium: 4 mg")
                        Text("Potassium: 295 mg")
                        Text("Carbonhydrates: 2.65 g (Dietary Fiber: 1.6 g)")
                        Text("Magnesium: 64 mg")
                        Text("Iron: 3.17 mg")
                        Text("Vitamin C: 18 mg")
                        Text("Vitamin E: 0.8 mg")
                    }
                }
            }
            .navigationTitle("Basil")
        }
    }
}
