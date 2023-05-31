//
//  InfoSourcesView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct InfoSourcesView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Special thanks to organisations / websites below for providing information")) {
                    Text("Wikipedia - All hydroponic plants information")
                    Text("floraflex.com - Hydroponic tips")
                }
            }
            .navigationTitle("Information Sources")
        }
    }
}

