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
        .padding(.all, 10)
    }
}

