//
//  SpinachView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 28/5/2023.
//

import SwiftUI

struct SpinachView: View {
    var body: some View {
        NavigationStack {                    
                    List {
                        Section(header: Text("Description")) {
                            Text("According to Wikipedia, spinach is a leafy green flowering plant native to central and western Asia. Its leaves are a common edible vegetable consumed either fresh, or after storage using preservation techniques by canning, freezing, or dehydration. It may be eaten cooked or raw, and the taste differs considerably, the high oxalate content may be reduced by steaming.")
                        }
                        Section(header: Text("Scientific Name")) {
                            Text("Spinacia oleracea")
                                .italic()
                        }
                        Section(header: Text("Nutrition Information - Per 100g")) {
                            Group {
                                Text("Energy: 23 kcal")
                                Text("Fat: 0.4 g (Saturated Fat: 0.1 g)")
                                Text("Protein: 2.9 g")
                                Text("Sodium: 79 mg")
                                Text("Potassium: 558 mg")
                                Text("Carbonhydrates: 3.6 g (Sugars: 0.4 g & Dietary Fiber: 2.2 g)")
                                Text("Magnesium: 79 mg")
                                Text("Iron: 2.7 mg")
                                Text("Vitamin C: 28.1 mg")
                                Text("Vitamin E: 2 mg")
                            }
                        }
                        .navigationTitle("Spinach")
                    }
                }
             }
        }

