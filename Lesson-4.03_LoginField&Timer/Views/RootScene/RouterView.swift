//
//  RouterView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 27.11.2023.
//

import SwiftUI

// MARK: - RouterView

struct RouterView: View {
    
    // MARK: - Wrapped properties
    
    @StateObject private var login = RootViewModel()
    
    //
    // MARK: - Body
    
    var body: some View {
        Group {
            if login.user.isRegistered {
                TimerView()
            } else {
                LoginView()
            }
        }.environmentObject(login)
    }
}

// MARK: - Preview

#Preview {
    RouterView()
}
