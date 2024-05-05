//
//  LiveDataView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct LiveDataView: View {
    var body: some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            NavigationStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        DateAndTimeCard()
                        HStack(spacing: 10) {
                            SoilHumidityTopDataCard(topDataCardWidth: 160, topDataCardHeight: 160)
                            SoilHumidityBottomDataCard(bottomDataCardWidth: 160, bottomDataCardHeight: 160)
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
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            NavigationStack {
                VStack(alignment: .leading, spacing: 10) {
                    DateAndTimeCard()
                }
                VStack {
                    HStack(alignment: .center, spacing: 15) {
                        SoilHumidityTopDataCard(topDataCardWidth: 350, topDataCardHeight: 160)
                        SoilHumidityBottomDataCard(bottomDataCardWidth: 350, bottomDataCardHeight: 160)
                        AirTemperatureDataCard()
                    }
                    HStack(alignment: .center, spacing: 15) {
                        AirHumidityDataCard()
                        LumensDataCard()
                        WaterDepthDataCard()
                    }
                }
                .navigationTitle("Live Data")
            }
        }
    }
}
