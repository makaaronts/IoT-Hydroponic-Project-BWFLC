//
//  AboutView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
                Image("bwflcSchoolLogo")
                    .clipShape(Circle())
                Text("Buddhist Wong Fung Ling College")
                    .font(.title2)
                    .fontWeight(.bold)
            List {
                Section(header: Text("Project Name")) {
                    Text("Water Agri BWFLC")
                }
                Section(header: Text("Project Description")) {
                    Text("Shows the data for the water algriculture in BWFLC")
                }
            }
            .navigationTitle("About the Project")
        }
        .scrollDisabled(true)
        .scrollContentBackground(.hidden)
    }
}
