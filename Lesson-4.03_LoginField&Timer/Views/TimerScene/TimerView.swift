//
//  TimerView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - MainView

struct TimerView: View {
    
    // MARK: - Wrapped properties
    
    @EnvironmentObject var storageManager: StorageManager
    
    @StateObject private var timer = TimerViewModel()
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            MainTextView(text: "Greeting to \(storageManager.name)")
            
            MainTextView(text: timer.timeCounter.counter.formatted())
            
            Spacer()
            
            StartButtonView(timer: timer)
            
            Spacer()
            
            LogoutButtonView()
        }
        .padding()
    }
}


// MARK: - Preview

#Preview {
    TimerView()
}
