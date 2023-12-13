//
//  Lesson_4_03_LoginField_TimerApp.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

@main
struct Lesson_4_03_LoginField_TimerApp: App {
    
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            RouterView()
                .environmentObject(storageManager)
        }
    }
}
