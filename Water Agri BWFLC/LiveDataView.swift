//
//  LiveDataView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct LiveDataView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    DateAndTimeCard()
                    HStack(spacing: 10) {
                        SoilHumidityTopDataCard()
                        SoilHumidityBottomDataCard()
                    }
                    AirTemperatureDataCard()
                    AirHumidityDataCard()
                    LumensDataCard()
                    WaterDepthDataCard()
                }
            }
            .navigationTitle("Live Data")
        }
    }
}
