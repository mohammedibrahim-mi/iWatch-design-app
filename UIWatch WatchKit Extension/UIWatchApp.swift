//
//  UIWatchApp.swift
//  UIWatch WatchKit Extension
//
//  Created by Pixel on 21/10/21.
//

import SwiftUI

@main
struct UIWatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
