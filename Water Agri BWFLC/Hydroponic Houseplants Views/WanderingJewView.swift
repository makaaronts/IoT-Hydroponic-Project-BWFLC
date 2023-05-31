//
//  WanderingJewView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct WanderingJewView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Description")) {
                    Text("According to Wikipedia, Wandering Jew has attractive zebra-patterned leaves, the upper surface showing purple new growth and green older growth parallel to the central axis, as well as two broad silver-colored stripes on the outer edges, with the lower leaf surface presenting a deep uniform magenta. The leaves are bluish green and usually have two longitudinal stripes that are silvery on the surface and purple on the underside. The leaf sheaths are thin and translucent, 8 to 12 mm long and 5 to 8 mm wide, at the mouth they are long, otherwise glabrous or slightly hairy.")
                }
                Section(header: Text("Scientific Name")) {
                    Text("Tradescantia zebrina")
                        .italic()
                }
            }
            .navigationTitle("Wandering Jew")
        }
    }
}

