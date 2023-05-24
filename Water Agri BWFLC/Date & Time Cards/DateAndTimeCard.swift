//
//  DateAndTimeCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 24/5/2023.
//

import SwiftUI

struct DateAndTimeCard: View {
    var body: some View {
        HStack {
            Image(systemName: "calendar.badge.clock")
                .font(.system(size: 30))
            HStack(spacing: 15) {
                Text("\(Date.now, style: .date)")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(Date.now, style: .time)")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
        .foregroundColor(.blue)
        .layoutPriority(100)
        .frame(width: 350, height: 100)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 5)
        )
        .padding(.all, 10)
    }
}

