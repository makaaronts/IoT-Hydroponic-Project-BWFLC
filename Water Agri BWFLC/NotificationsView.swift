//
//  NotificationsView.swift
//  Water Agri BWFLC
//
//  Created by STEM MacBook Air 01 on 23/5/2023.
//

import SwiftUI
import UserNotifications

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Button {
                    enableNotification()
                } label: {
                    HStack {
                        Image(systemName: "bell.badge.fill")
                        Text("Enable Notifications")
                    }
                }
                .buttonStyle(.borderedProminent)
                List {
                    Section(header: Text("About Enable Notifications")) {
                        Text("After enable notifications in this app, this app will send you a notification of checking out the live data.")
                    }
                }
            }
            .navigationTitle("Notifications")
        }
        .scrollDisabled(true)
        .scrollContentBackground(.hidden)
    }
    
    func enableNotification() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            print(success ? "Notifcations enabled" : "Notifications enable failed")
            print(error? .localizedDescription ?? "")
        }
        let content = UNMutableNotificationContent()
            content.title = "Water depth is too low"
            content.body = "Make sure the water depth is enough high."
            content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: (1*60), repeats: true)
        let request = UNNotificationRequest(identifier: "Water Agri BWFLC", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

