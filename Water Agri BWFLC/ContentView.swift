//
//  ContentView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LiveDataView()
                .tabItem {
                    Label("Live Data", systemImage: "chart.xyaxis.line")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
