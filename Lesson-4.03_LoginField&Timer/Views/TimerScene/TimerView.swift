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
    
    @StateObject private var timerVM = TimerViewModel()
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            MainTextView(text: Constants.greetingText + timerVM.storageManager.name)
            
            MainTextView(text: timerVM.timeCounter.counter.formatted())
            
            Spacer()
            
            StartButtonView(timer: timerVM)
            
            Spacer()
            
            LogoutButtonView(timerVM: timerVM)
        }
        .padding()
    }
}


// MARK: - Preview

#Preview {
    TimerView()
}
