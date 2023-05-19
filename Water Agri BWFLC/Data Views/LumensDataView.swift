//
//  LumensDataView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI
import Charts

struct LumensDataView: View {
    @State var data: [Feed] = []
    var body: some View {
        NavigationStack {
            List {
                Chart {
                    ForEach(data, id: \.createdAt) { feed in
                        LineMark(x: .value(feed.createdAt, feed.createdAt), y: .value("SI", feed.field6))
                    }
                }
                .frame(height: 250)
                Section(header: Text("About the data")) {
                    Text("This data chart only shows real-time data.")
                }
            }
            .onAppear {
                loadData()
            }
        }
        .navigationTitle("Lumens")
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

struct F_eedsData: Decodable {
    let feeds: [Feed_s]
}

struct Feed_s: Decodable, Identifiable {
    let id = UUID()
    let entryId: Int
    let createdAt: String
    let field1: String
    let field2: String
    let field3: String
    let field4: String
    let field5: String
    let field6: String
    
    enum CodingKeys: String, CodingKey {
        case entryId = "entry_id"
        case createdAt = "created_at"
        case field1
        case field2
        case field3
        case field4
        case field5
        case field6
    }
}

