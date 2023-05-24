//
//  DateCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 24/5/2023.
//

import SwiftUI

struct DateCard: View {
    var body: some View {
        HStack {
            Image(systemName: "calendar")
                .font(.system(size: 30))
            Text("\(Date.now, style: .date)")
                .font(.title2)
                .fontWeight(.bold)
        }
        .foregroundColor(.blue)
        .padding(.all, 10)
    }
}
