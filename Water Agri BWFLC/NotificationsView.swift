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
                .cornerRadius(20)
                    List {
                    Section(header: Text("About Enable Notifications")) {
                        Text("After enable notifications in this app, this app will send you a notification of checking out the live data. You can change this settings on Settings later.")
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
        var datCom = DateComponents()
        datCom.hour = 8
        datCom.minute = 30
        let trigger = UNCalendarNotificationTrigger(dateMatching: datCom, repeats: false)
        let request = UNNotificationRequest(identifier: "Water Agri BWFLC", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

