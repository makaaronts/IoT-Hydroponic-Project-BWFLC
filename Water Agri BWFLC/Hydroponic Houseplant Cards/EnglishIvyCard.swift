//
//  EnglishIvyCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct EnglishIvyCard: View {
    var body: some View {
        NavigationLink(destination: EnglishIvyView()) {
            ZStack(alignment: .topTrailing) {
                VStack {
                    Image("englishIvy")
                        .resizable()
                        .frame(width: 350)
                    HStack(spacing: 20) {
                        Image(systemName: "camera.macro")
                            .font(.system(size: 30))
                        VStack {
                            Text("English Ivy")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Text("Hedera helix")
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
