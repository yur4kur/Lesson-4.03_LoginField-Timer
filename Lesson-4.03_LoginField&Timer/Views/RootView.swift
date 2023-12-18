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
    
    @EnvironmentObject private var userManager: UserManager
    
    
    // MARK: - Body
    
    var body: some View {
        Group {
            if userManager.user.isRegistered {
               TimerView()
            } else {
                LoginView()
            }
        }
    }
}

// MARK: - Preview

#Preview {
    RootView()
        .environmentObject(UserManager())
}
