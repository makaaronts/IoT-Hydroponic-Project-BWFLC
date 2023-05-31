//
//  CorianderView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct CorianderView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, coriander is also known as cilantro, is an annual herb in the family Apiaceae. All parts of the plant are edible, but the fresh leaves and the dried seeds are the parts most traditionally used in cooking.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Coriandrum sativum")
                        .italic()
                }
                Section(header: Text("Nutrition Information - Per 100g")) {
                    Group {
                        Text("Energy: 23 kcal")
                        Text("Fat: 0.52 g")
                        Text("Protein: 2.13 g")
                        Text("Sodium: 46 mg")
                        Text("Potassium: 521 mg")
                        Text("Carbonhydrates: 3.67 g (Sugars: 0.87 g & Dietary Fiber: 2.8 g)")
                        Text("Magnesium: 26 mg")
                        Text("Iron: 1.77 mg")
                        Text("Vitamin C: 27 mg")
                        Text("Vitamin E: 2.5 mg")
                    }
                }
            }
            .navigationTitle("Coriander")
        }
    }
}

