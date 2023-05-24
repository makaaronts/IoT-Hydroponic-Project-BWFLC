//
//  Lumens.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 24/5/2023.
//

import SwiftUI

struct Lumens: View {
    @State var dataSources: [Feed] = []
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            HStack {
                Image(systemName: "rays")
                    .font(.system(size: 30))
                Text("Lumens")
                    .font(.title)
                    .fontWeight(.bold)
            }
            HStack(spacing: 15) {
                Text("Data Range")
                    .font(.title2)
                    .fontWeight(.bold)
                ForEach(dataSources, id: \.createdAt) { feed in
                    Text("0 SI - \(feed.field6) SI")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            }
        }
        .foregroundColor(.blue)
        .layoutPriority(100)
        .frame(width: 350, height: 150)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 5)
        )
        .onAppear {
            loadData()
        }
        .padding(.all, 10)
    }
    func loadData() {
        guard let url = URL(string: "https://api.thingspeak.com/channels/2103477/feeds.json?&results=1") else {
            return
        }
        
     URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(FeedData.self, from: data)
                    DispatchQueue.main.async {
                        self.dataSources = decodedData.feeds
                    }
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }
}

struct Feeds_CData: Decodable {
    let feeds: [Feeds_C]
}

struct Feeds_C: Decodable, Identifiable {
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


