//
//  WaterDepthDataView.swift
//  Water Agri BWFLC
//
//  Created by STEM Macbook Air 08 on 19/5/2023.
//

import SwiftUI
import Charts

struct WaterDepthDataView: View {
    @State var data: [Feed] = []
    var body: some View {
        NavigationStack {
            List {
                Chart {
                    ForEach(data, id: \.entryId) { feed in
                        LineMark(x: .value("Time", feed.createdAt), y: .value("%", Int(feed.field1) ?? 0))
                    }
                }
                .frame(height: 250)
                Section(header: Text("About the Data")) {
                    Text("This data chart only shows real-time data.")
                }
            }
            .onAppear {
                loadData()
            }
            }
            .navigationTitle("Water Depth")
    }
    func loadData() {
        guard let url = URL(string: "https://api.thingspeak.com/channels/2103477/feeds.json?&results=4") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(FeedData.self, from: data)
                    DispatchQueue.main.async {
                        self.data = decodedData.feeds
                    }
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }
}
