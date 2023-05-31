//
//  HydroponicsTipsView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct HydroponicsTipsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Research Before You Grow")) {
                    Text("Each plant you decide to grow with hydroponics will be different from the next. Even one batch of tomatoes may behave differently than the next batch. Before you start growing, make sure to research each crop and learn about its pH, temperature, nutritional, and light preferences.")
                }
                Section(header: Text("Set a Schedule")) {
                    Text("A regular plant care schedule will help you ensure your plants are growing properly. Hang up a whiteboard where you can see it with daily, weekly, and monthly hydroponic growing tasks.")
                }
                Section(header: Text("Pick the Right Hydroponic Method and Medium")) {
                    Text("Choosing the best hydroponic growing method can be difficult when there are so many different options to pick from. Each method comes with its own benefits and difficulties.")
                }
            }
            .navigationTitle("Hydroponic Tips")
        }
    }
}

