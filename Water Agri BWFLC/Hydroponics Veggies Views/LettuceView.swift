//
//  LettuceView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct LettuceView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, lettuce is most often grown as a leaf vegetable, but sometimes for its stem and seeds. One variety, celtuce, is grown for its stems, which are eaten either raw or cooked. In addition to its main use as a leafy green, it has also gathered religious and medicinal significance over centuries of human consumption. ")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Lactuca sativa")
                        .italic()
                }
                Section(header: Text("Nutrition Information - Per 100g")) {
                    Group {
                        Text("Energy: 13 kcal")
                        Text("Fat: 0.22 g")
                        Text("Protein: 1.35 g")
                        Text("Sodium: 5 mg")
                        Text("Potassium: 238 mg")
                        Text("Carbonhydrates: 2.23 g (Sugars: 0.94 g & Dietary Fiber: 1.1 g)")
                        Text("Magnesium: 13 mg")
                        Text("Iron: 1.24 mg")
                        Text("Vitamin C: 3.7 mg")
                        Text("Vitamin E: 0.18 mg")
                    }
                }
            }
            .navigationTitle("Lettuce")
        }
    }
}

