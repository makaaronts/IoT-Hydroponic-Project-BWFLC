//
//  WaterDepthDataCard.swift
//  Water Agri BWFLC
//
//  Created by STEM Macbook Air 08 on 19/5/2023.
//

import SwiftUI

struct WaterDepthDataCard: View {
    @State var data: [Feed] = []
    
    var body: some View {
        NavigationLink(destination: WaterDepthDataView()) {
            ForEach(data, id: \.entryId) { feed in
                VStack(alignment: .center, spacing: 15) {
                    Text("\(feed.field1) m")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    HStack {
                        Image(systemName: "water.waves")
                            .font(.system(size: 30))
                            .foregroundColor(.blue)
                        Text("Water Depth")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
            }
            .layoutPriority(100)
            .frame(width: 350, height: 150)
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
