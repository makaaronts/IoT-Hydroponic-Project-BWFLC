//
//  WaterHumidityDataCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct SoilHumidityTopDataCard: View {
    @State var data: [Feed] = []
    
    var body: some View {
        NavigationLink(destination: SoilHumidityTopDataView()) {
            ForEach(data, id: \.entryId) { feed in
                VStack(alignment: .center, spacing: 10) {
                    Text("\(feed.field2)%")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    HStack {
                        Image(systemName: "drop.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.blue)
                        Text("Top")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
            }
            .layoutPriority(100)
            .frame(width: 160, height: 160)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 10)
            )
        }
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
                        self.data = decodedData.feeds
                    }
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }
}

struct FeedData: Decodable {
    let feeds: [Feed]
}

struct Feed: Decodable, Identifiable {
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

