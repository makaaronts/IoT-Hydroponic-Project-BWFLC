//
//  KaleView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct KaleView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, kale, or we called it 'leaf cabbage', belongs to a group of cabbage cultivars grown for their edible leaves, although some are used as ornamentals. Kale plants have green or purple leaves, and the central leaves do not form a head (as with headed cabbage).")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Brassica oleracea")
                        .italic()
                }
                Section(header: Text("Nutrition Information (Raw) - Per 100g")) {
                    Group {
                        Text("Energy: 49 kcal")
                        Text("Fat: 0.9 g")
                        Text("Protein: 4.3 g")
                        Text("Sodium: 38 mg")
                        Text("Potassium: 491 mg")
                        Text("Carbonhydrates: 8.8 g (Sugars: 2.3 g & Dietary Fiber: 3.6 g)")
                        Text("Magnesium: 47 mg")
                        Text("Iron: 1.5 mg")
                        Text("Vitamin C: 120 mg")
                        Text("Vitamin E: 1.54 mg")
                    }
                }
            }
            .navigationTitle("Kale")
        }
    }
}
