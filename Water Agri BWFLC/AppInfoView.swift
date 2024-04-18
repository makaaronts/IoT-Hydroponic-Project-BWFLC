//
//  AppInfoView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 18/5/2023.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Minimum System Requirements")) {
                    Text("iOS 17.1")
                }
                Section(header: Text("Suitable Platforms")) {
                    HStack {
                        Image(systemName: "iphone.gen2")
                            .foregroundColor(.blue)
                        Text("iPhone")
                    }
                }
            }
            .navigationTitle("App Information")
        }
        .scrollDisabled(true)
        .scrollContentBackground(.hidden)
    }
}
