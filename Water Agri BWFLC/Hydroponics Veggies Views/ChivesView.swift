//
//  ChivesView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct ChivesView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, chives is a species of flowering plant in the family Amaryllidaceae that produces edible leaves and flowers. Their close relatives include the common onions, garlic, shallot, leek, scallion and Chinese onion.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Allium schoenoprasum")
                        .italic()
                }
                Section(header: Text("Nutrition Information - Per 100g")) {
                    Group {
                        Text("Energy: 30 kcal")
                        Text("Fat: 0.73 g (Saturated Fat: 0.1 g)")
                        Text("Protein: 3.27 g")
                        Text("Sodium: 3 mg")
                        Text("Potassium: 296 mg")
                        Text("Carbonhydrates: 4.35 g (Sugars: 1.85 g & Dietary Fiber: 2.5 g)")
                        Text("Magnesium: 42 mg")
                        Text("Iron: 1.6 mg")
                        Text("Vitamin C: 58.1 mg")
                        Text("Vitamin E: 0.21 mg")
                    }
                }
            }
            .navigationTitle("Chives")
        }
    }
}

