//
//  SettingsView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 18/5/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: AboutView()) {
                    HStack {
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(.blue)
                        Text("About the App")
                    }
                }
                NavigationLink(destination: CreditView()) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.blue)
                        Text("Credits")
                    }
                }
                NavigationLink(destination: AppInfoView()) {
                    HStack {
                        Image(systemName: "questionmark.app.fill")
                            .foregroundColor(.blue)
                        Text("App Information")
                    }
                }
            }
            .font(.system(size: 25))
            .navigationTitle("Settings")
        }
    }
}
