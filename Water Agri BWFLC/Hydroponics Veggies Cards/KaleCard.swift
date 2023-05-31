//
//  KaleCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct KaleCard: View {
    var body: some View {
        NavigationLink(destination: KaleView()) {
            ZStack(alignment: .topTrailing) {
                VStack {
                    Image("kale")
                        .resizable()
                        .frame(width: 350)
                    HStack(spacing: 20) {
                        Image(systemName: "leaf.fill")
                            .font(.system(size: 30))
                        VStack {
                            Text("Kale")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Text("Brassica oleracea")
                                .font(.system(size: 20))
                                .italic()
                        }
                    }
                }
                    .frame(width: 350)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                }
                .layoutPriority(100)
                .frame(width: 350, height: 200)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.blue, lineWidth: 5)
                )
            }
            .padding(.all, 10)
        }
    }



