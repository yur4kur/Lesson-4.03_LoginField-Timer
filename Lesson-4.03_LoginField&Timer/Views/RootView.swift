//
//  RootView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - RootView

struct RootView: View {
    
    // MARK: - Wrapped properties
    
    @StateObject private var userLogin = LoginViewModel()
    
    
    // MARK: - Body
    
    var body: some View {
        Group {
            if userLogin.user.isRegistered {
                MainView()
            } else {
                LoginView()
            }
        }.environmentObject(userLogin)
    }
}

// MARK: - Preview

#Preview {
    RootView()
}
