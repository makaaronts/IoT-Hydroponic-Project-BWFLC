//
//  WaterDepth.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 24/5/2023.
//

import SwiftUI

struct WaterDepth: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            HStack {
                Image(systemName: "water.waves")
                    .font(.system(size: 30))
                Text("Water Depth")
                    .font(.title)
                    .fontWeight(.bold)
            }
            HStack(spacing: 15) {
                Text("Data Range")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("0 m - 0 m")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
        .foregroundColor(.blue)
        .layoutPriority(100)
        .frame(width: 350, height: 150)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 5)
        )
        .padding(.all, 10)
    }
}
