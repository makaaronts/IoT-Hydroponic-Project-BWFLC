//
//  DataSummaryView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 24/5/2023.
//

import SwiftUI

struct DataSummaryView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment:. center, spacing: 15) {
                    DateAndTimeCard()
                    SoilHumidity()
                    AirHumidity()
                    AirTemperature()
                    Lumens()
                }
                .navigationTitle("Data Summary")
            }
        }
    }
}

