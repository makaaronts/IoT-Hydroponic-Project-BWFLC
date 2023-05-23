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
                Button("Enable Notifications") {
                    enableNotification()
                }
                .buttonStyle(.borderedProminent)
                List {
                    Section(header: Text("About Enable Notifications")) {
                        Text("After enable notifications in this app, this app will send you a notification of a data daily summary.")
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
            content.title = "Hello!"
            content.subtitle = "Check out the daily data summary."
            content.body = "Check out the daily live data summary in our app"
            content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
        let request = UNNotificationRequest(identifier: "Water Agri BWFLC Notifications", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    }
}

