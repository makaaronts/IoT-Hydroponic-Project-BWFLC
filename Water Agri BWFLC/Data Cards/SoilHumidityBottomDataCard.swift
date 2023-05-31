//
//  SoilHumidityBottomDataCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 19/5/2023.
//

import SwiftUI

struct SoilHumidityBottomDataCard: View {
    @State var data: [Feed] = []
    
    var body: some View {
        NavigationLink(destination: SoilHumidityBottomDataView()) {
            ForEach(data, id: \.entryId) { feed in
                VStack(alignment: .center, spacing: 10) {
                    Text("\(feed.field3)%")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    HStack {
                        Image(systemName: "drop.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.blue)
                        Text("Bottom")
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
                .stroke(Color.blue, lineWidth: 5))
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
