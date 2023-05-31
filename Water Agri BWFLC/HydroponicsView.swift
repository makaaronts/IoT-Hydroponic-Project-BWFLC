//
//  hydroponicsView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct HydroponicsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Vegetables suitable for hydroponics")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.leading, 15)
                    Group {
                        SpinachCard()
                        LettuceCard()
                        ChivesCard()
                        BasilCard()
                        CorianderCard()
                        KaleCard()
                    }
                    
                    Text("Houseplants suitable for hydroponics")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.leading, 15)
                    Group {
                        WanderingJewCard()
                        EnglishIvyCard()
                        PothosCard()
                        ColeusCard()
                        LuckyBambooCard()
                        GeraniumCard()
                    }
                }
                .navigationTitle("Hydroponics Plants")
            }
        }
    }
}

