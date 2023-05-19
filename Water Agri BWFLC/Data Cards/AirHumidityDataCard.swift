//
//  AirHumidityDataCard.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 17/5/2023.
//

import SwiftUI

struct AirHumidityDataCard: View {
    @State var data: [Feed] = []
    
    var body: some View {
        NavigationLink(destination: AirHumidityDataView()) {
            ForEach(data, id: \.entryId) { feed in
                VStack(alignment: .center, spacing: 15) {
                    Text("\(feed.field5)%")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    HStack {
                        Image(systemName: "humidity.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.blue)
                        Text("Air Humidity")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
            }
            .layoutPriority(100)
            .frame(width: 340, height: 150)
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



