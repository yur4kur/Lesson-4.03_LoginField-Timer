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
    @EnvironmentObject private var userManager: UserManager
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            MainTextView(
                text: Constants.greetingText + userManager.user.name
            )
            
            MainTextView(text: timerVM.timeCounter.counter.formatted())
            
            Spacer()
            
            StartButtonView(timer: timerVM)
            
            Spacer()
            
            LogoutButtonView(action: {
                timerVM.logout(userManager)
            })
        }
        .padding()
    }
}


// MARK: - Preview

#Preview {
    TimerView()
}
