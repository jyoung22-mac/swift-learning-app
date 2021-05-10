//
//  SwiftLearningApp.swift
//  SwiftLearning
//
//  Created by Justin Young on 5/9/21.
//

import SwiftUI

@main
struct SwiftLearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
