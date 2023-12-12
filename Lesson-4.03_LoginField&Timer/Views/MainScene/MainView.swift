//
//  MainView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - MainView

struct MainView: View {
    
    // MARK: - Wrapped properties
    
    @EnvironmentObject var login: LoginViewModel
    
    @StateObject private var timer = MainViewModel()
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            MainTextView(text: "Greeting to \(login.userName)")
            
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
    MainView()
}
