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
                VStack(alignment: .leading, spacing: 10) {
                    DateCard()
                    VStack(alignment:. center, spacing: 15) {
                        SoilHumidity()
                        AirHumidity()
                        AirTemperature()
                        Lumens()
                        WaterDepth()
                    }
                }
                .navigationTitle("Data Summary")
            }
        }
    }
}

